import 'package:freezed_annotation/freezed_annotation.dart';

import '../core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required UniqueId id,
    required bool verified,
    required String email,
    String? photo,
    String? displayName,
  }) = _User;
}
