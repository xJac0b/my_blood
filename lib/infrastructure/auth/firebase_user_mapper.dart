import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/auth/user.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase_auth.User {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid));
  }
}
