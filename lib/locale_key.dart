import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
final class LocaleKey with EquatableMixin {
  final String key;
  final Object? metadata;

  LocaleKey(this.key, [this.metadata]);

  @override
  List<Object?> get props => [key];
}
