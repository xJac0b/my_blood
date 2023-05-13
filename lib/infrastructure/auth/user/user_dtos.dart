import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/auth/user/user.dart';
import '../../../domain/auth/value_objects.dart';
import '../../../domain/core/value_objects.dart';

part 'user_dtos.freezed.dart';
part 'user_dtos.g.dart';

@freezed
class UserDto with _$UserDto {
  const factory UserDto(
      {required String id,
      required bool filled,
      required DateTime dateOfBirth,
      required double weight,
      required bool male}) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  factory UserDto.fromFirestore(DocumentSnapshot doc) {
    return UserDto.fromJson(doc.data()! as Map<String, dynamic>)
        .copyWith(id: doc.id);
  }

  const UserDto._();

  factory UserDto.fromDomain(User user) {
    return UserDto(
        id: user.id.getOrCrash(),
        filled: user.filled,
        dateOfBirth: user.dateOfBirth.getOrCrash(),
        weight: user.weight.getOrCrash(),
        male: user.male);
  }

  factory UserDto.fromDomainInit(User user) {
    return UserDto(
        id: user.id.getOrCrash(),
        filled: user.filled,
        dateOfBirth: user.dateOfBirth.getOrCrash(),
        weight: 0,
        male: true);
  }

  User toDomain(firebase_auth.User user) {
    return User(
        id: UniqueId.fromUniqueString(id),
        filled: filled,
        dateOfBirth: DateOfBirth(dateOfBirth),
        weight: Weight(weight),
        male: male,
        email: EmailAddress(user.email!),
        verified: user.emailVerified,
        displayName: DisplayName(user.displayName ?? ''));
  }
}
