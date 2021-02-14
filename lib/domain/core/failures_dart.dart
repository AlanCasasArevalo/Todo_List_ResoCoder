import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures_dart.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.exceedingLength({
    @required final T failedValue,
    @required final int max
  }) = ExceedingLength<T>;
  const factory ValueFailure.empty({
    @required final T failedValue
  }) = Empty<T>;
  const factory ValueFailure.multiline({
    @required final T failedValue
  }) = Multiline<T>;
  const factory ValueFailure.listTooLong({
    @required final T failedValue,
    @required final int max
  }) = ListTooLong<T>;
  const factory ValueFailure.invalidEmail({
    @required final T failedValue
  }) = InvalidEmail<T>;
  const factory ValueFailure.shorPassword({
    @required final T failedValue
  }) = ShortPassword<T>;
}

/*
Se pueden separar los errores de esta manera
@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.auth(AuthValueFailure<T> failure) = _Auth<T>;
  const factory ValueFailure.notes(NotesValueFailure<T> failure) = _Notes<T>;
}

@freezed
abstract class AuthValueFailure<T> with _$AuthValueFailure<T> {
  const factory AuthValueFailure.invalidEmail({
    @required final String failedValue
  }) = InvalidEmail<T>;
  const factory AuthValueFailure.shorPassword({
    @required final String failedValue
  }) = ShortPassword<T>;
}

@freezed
abstract class NotesValueFailure<T> with _$NotesValueFailure<T> {
  const factory NotesValueFailure.exceedingLenght({
    @required final String failedValue
  }) = ExceedingLenght<T>;
}
 */