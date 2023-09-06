import 'dart:convert';
import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:merge_l10n/configuration.dart';
import 'package:merge_l10n/locale_key.dart';

Future<void> mergeL10N(Configuration configuration) async {
  final arbFiles = scan(configuration.lookDirectory);

  final languages = <String, List<File>>{};
  for (final file in arbFiles) {
    final name =
        file.path.split('/').lastOrNull?.split('.').dropRight(1).join('.');
    if (name == null) continue;

    languages[name] ??= [];
    languages[name]!.add(file);
  }

  final mergeResults = await Future.wait(
    languages.entries.map(
      (e) => merge(e.key, e.value),
    ),
  );

  for (final result in mergeResults) {
    switch (result) {
      case Right(:final value):
        final (:name, :content) = value;
        final file = File('${configuration.targetDirectory}/$name.arb');
        if (!file.existsSync()) file.createSync();

        file.writeAsStringSync(jsonEncode(content));
        break;
      case Left(:final value):
        print(value);
        exit(1);
    }
  }
}

Future<Either<Error, ({String name, Map<String, dynamic> content})>> merge(
  String name,
  List<File> files,
) async {
  final content = <LocaleKey, dynamic>{};
  final collisions = <LocaleKey, List<LocaleKey>>{};

  for (final file in files) {
    final Map<String, dynamic> json = jsonDecode(await file.readAsString());
    for (final MapEntry(key: jsonKey, :value) in json.entries) {
      final key = LocaleKey(jsonKey, file);

      if (content.containsKey(key)) {
        switch (content.lookupKeyEq(Eq.fromUniversalEquals(), key)) {
          case Some(value: final existingKey):
            collisions[existingKey] ??= [existingKey];
            collisions[existingKey]!.add(key);

            break;
          case None():
            break;
        }

        continue;
      }

      content[key] = value;
    }

    if (collisions.isNotEmpty) {
      final messageBuilder = StringBuffer();
      for (final MapEntry(:key, value: keys) in collisions.entries) {
        messageBuilder.write("${key.key} was duplicated in:\n");
        for (final LocaleKey(:metadata) in keys) {
          messageBuilder.write("\t$metadata\n");
        }

        messageBuilder.write('\n');
      }

      return Left(ArgumentError('Keys collision occured:\n$messageBuilder'));
    }
  }

  return Right(
    (
      name: name,
      content: content.map((key, value) => MapEntry(key.key, value)),
    ),
  );
}

Iterable<File> scan(String path) {
  final directory = Directory(path);
  if (!directory.existsSync()) return [];

  var files = directory.listSync(
    recursive: true,
    followLinks: false,
  );

  return files.whereType<File>().where((file) => file.path.endsWith('.arb'));
}
