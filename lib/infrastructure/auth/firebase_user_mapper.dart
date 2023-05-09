import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;

import '../../domain/auth/user.dart';
import '../../domain/auth/value_objects.dart';
import '../../domain/core/value_objects.dart';

extension FirebaseUserDomainX on firebase_auth.User {
  Future<User> toDomain([DocumentReference? userReference]) async {
    var dateOfBirth = DateTime.now();
    var filled = false, male = false;
    var weight = 0.0;
    final doc = await userReference?.get();
    if (doc != null) {
      final t = doc['dateOfBirth'] as Timestamp;
      dateOfBirth = t.toDate();

      filled = doc.get('filled') as bool;
      male = doc.get('male') as bool;
      weight = double.parse(doc.get('weight').toString());
    }
    return User(
      id: UniqueId.fromUniqueString(uid),
      verified: emailVerified,
      email: email!,
      displayName: DisplayName(displayName ?? ''),
      dateOfBirth: DateOfBirth(dateOfBirth),
      filled: filled,
      male: male,
      weight: Weight(weight),
    );
  }
}
