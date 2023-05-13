import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/value_objects.dart';
import '../value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required bool verified,
    required EmailAddress email,
    required DisplayName displayName,
    required bool filled,
    required DateOfBirth dateOfBirth,
    required Weight weight,
    required bool male,
  }) = _User;
}
