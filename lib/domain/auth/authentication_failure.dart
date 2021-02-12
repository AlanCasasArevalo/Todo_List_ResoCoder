import 'package:freezed_annotation/freezed_annotation.dart';
part 'authentication_failure.freezed.dart';

@freezed
abstract class AuthenticationFailure with _$AuthenticationFailure {
  const factory AuthenticationFailure.canceledByUser() = CanceledByUser;
  const factory AuthenticationFailure.serverError() = ServerError;
  const factory AuthenticationFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthenticationFailure.invalidEmailAndPasswordCombination() = InvalidEmailAndPasswordCombination;
}
