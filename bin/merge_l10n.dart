import 'package:merge_l10n/configuration.dart';
import 'package:merge_l10n/merge_l10n.dart';

Future<void> main(List<String> arguments) async {
  final Configuration configuration = Configuration(
    targetDirectory: 'l10n',
    lookDirectory: 'lib',
  );

  await mergeL10N(configuration);
}
