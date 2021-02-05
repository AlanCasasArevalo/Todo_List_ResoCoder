import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_dart.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required final String failedValue
  }) = InvalidEmail<T>;
  const factory ValueFailure.shorPassword({
    @required final String failedValue
  }) = ShortPassword<T>;
}
