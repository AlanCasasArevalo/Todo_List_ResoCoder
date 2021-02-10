// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'authentication_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthenticationFailureTearOff {
  const _$AuthenticationFailureTearOff();

// ignore: unused_element
  CanceledByUser canceledByUser() {
    return const CanceledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  InvalidEmailAnPasswordCombination invalidEmailAnPasswordCombination() {
    return const InvalidEmailAnPasswordCombination();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthenticationFailure = _$AuthenticationFailureTearOff();

/// @nodoc
mixin _$AuthenticationFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAnPasswordCombination(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAnPasswordCombination(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAnPasswordCombination(
            InvalidEmailAnPasswordCombination value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAnPasswordCombination(
        InvalidEmailAnPasswordCombination value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthenticationFailureCopyWith<$Res> {
  factory $AuthenticationFailureCopyWith(AuthenticationFailure value,
          $Res Function(AuthenticationFailure) then) =
      _$AuthenticationFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticationFailureCopyWithImpl<$Res>
    implements $AuthenticationFailureCopyWith<$Res> {
  _$AuthenticationFailureCopyWithImpl(this._value, this._then);

  final AuthenticationFailure _value;
  // ignore: unused_field
  final $Res Function(AuthenticationFailure) _then;
}

/// @nodoc
abstract class $CanceledByUserCopyWith<$Res> {
  factory $CanceledByUserCopyWith(
          CanceledByUser value, $Res Function(CanceledByUser) then) =
      _$CanceledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CanceledByUserCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $CanceledByUserCopyWith<$Res> {
  _$CanceledByUserCopyWithImpl(
      CanceledByUser _value, $Res Function(CanceledByUser) _then)
      : super(_value, (v) => _then(v as CanceledByUser));

  @override
  CanceledByUser get _value => super._value as CanceledByUser;
}

/// @nodoc
class _$CanceledByUser implements CanceledByUser {
  const _$CanceledByUser();

  @override
  String toString() {
    return 'AuthenticationFailure.canceledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CanceledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAnPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return canceledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAnPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAnPasswordCombination(
            InvalidEmailAnPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return canceledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAnPasswordCombination(
        InvalidEmailAnPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (canceledByUser != null) {
      return canceledByUser(this);
    }
    return orElse();
  }
}

abstract class CanceledByUser implements AuthenticationFailure {
  const factory CanceledByUser() = _$CanceledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthenticationFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAnPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAnPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAnPasswordCombination(
            InvalidEmailAnPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAnPasswordCombination(
        InvalidEmailAnPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthenticationFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthenticationFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAnPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAnPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAnPasswordCombination(
            InvalidEmailAnPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAnPasswordCombination(
        InvalidEmailAnPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthenticationFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $InvalidEmailAnPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAnPasswordCombinationCopyWith(
          InvalidEmailAnPasswordCombination value,
          $Res Function(InvalidEmailAnPasswordCombination) then) =
      _$InvalidEmailAnPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAnPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthenticationFailureCopyWithImpl<$Res>
    implements $InvalidEmailAnPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAnPasswordCombinationCopyWithImpl(
      InvalidEmailAnPasswordCombination _value,
      $Res Function(InvalidEmailAnPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAnPasswordCombination));

  @override
  InvalidEmailAnPasswordCombination get _value =>
      super._value as InvalidEmailAnPasswordCombination;
}

/// @nodoc
class _$InvalidEmailAnPasswordCombination
    implements InvalidEmailAnPasswordCombination {
  const _$InvalidEmailAnPasswordCombination();

  @override
  String toString() {
    return 'AuthenticationFailure.invalidEmailAnPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAnPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result canceledByUser(),
    @required Result serverError(),
    @required Result emailAlreadyInUse(),
    @required Result invalidEmailAnPasswordCombination(),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return invalidEmailAnPasswordCombination();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result canceledByUser(),
    Result serverError(),
    Result emailAlreadyInUse(),
    Result invalidEmailAnPasswordCombination(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAnPasswordCombination != null) {
      return invalidEmailAnPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result canceledByUser(CanceledByUser value),
    @required Result serverError(ServerError value),
    @required Result emailAlreadyInUse(EmailAlreadyInUse value),
    @required
        Result invalidEmailAnPasswordCombination(
            InvalidEmailAnPasswordCombination value),
  }) {
    assert(canceledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(invalidEmailAnPasswordCombination != null);
    return invalidEmailAnPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result canceledByUser(CanceledByUser value),
    Result serverError(ServerError value),
    Result emailAlreadyInUse(EmailAlreadyInUse value),
    Result invalidEmailAnPasswordCombination(
        InvalidEmailAnPasswordCombination value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAnPasswordCombination != null) {
      return invalidEmailAnPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAnPasswordCombination
    implements AuthenticationFailure {
  const factory InvalidEmailAnPasswordCombination() =
      _$InvalidEmailAnPasswordCombination;
}
