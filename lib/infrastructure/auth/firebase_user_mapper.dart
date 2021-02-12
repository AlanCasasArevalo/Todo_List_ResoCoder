import 'package:firebase_auth/firebase_auth.dart';

import 'package:todo_list_reso_coder/domain/auth/authentication.dart';

extension FirebaseUserDomainX on FirebaseUser {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}