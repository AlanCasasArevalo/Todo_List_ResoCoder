import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

import '../../domain/auth/authentication.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
  }) = _User;
}