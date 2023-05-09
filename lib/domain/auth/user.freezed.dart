// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$User {
  UniqueId get id => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  DisplayName get displayName => throw _privateConstructorUsedError;
  bool get filled => throw _privateConstructorUsedError;
  DateOfBirth get dateOfBirth => throw _privateConstructorUsedError;
  Weight get weight => throw _privateConstructorUsedError;
  bool get male => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {UniqueId id,
      bool verified,
      String email,
      DisplayName displayName,
      bool filled,
      DateOfBirth dateOfBirth,
      Weight weight,
      bool male});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verified = null,
    Object? email = null,
    Object? displayName = null,
    Object? filled = null,
    Object? dateOfBirth = null,
    Object? weight = null,
    Object? male = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      filled: null == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UniqueId id,
      bool verified,
      String email,
      DisplayName displayName,
      bool filled,
      DateOfBirth dateOfBirth,
      Weight weight,
      bool male});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? verified = null,
    Object? email = null,
    Object? displayName = null,
    Object? filled = null,
    Object? dateOfBirth = null,
    Object? weight = null,
    Object? male = null,
  }) {
    return _then(_$_User(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as DisplayName,
      filled: null == filled
          ? _value.filled
          : filled // ignore: cast_nullable_to_non_nullable
              as bool,
      dateOfBirth: null == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateOfBirth,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_User implements _User {
  const _$_User(
      {required this.id,
      required this.verified,
      required this.email,
      required this.displayName,
      required this.filled,
      required this.dateOfBirth,
      required this.weight,
      required this.male});

  @override
  final UniqueId id;
  @override
  final bool verified;
  @override
  final String email;
  @override
  final DisplayName displayName;
  @override
  final bool filled;
  @override
  final DateOfBirth dateOfBirth;
  @override
  final Weight weight;
  @override
  final bool male;

  @override
  String toString() {
    return 'User(id: $id, verified: $verified, email: $email, displayName: $displayName, filled: $filled, dateOfBirth: $dateOfBirth, weight: $weight, male: $male)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.filled, filled) || other.filled == filled) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.male, male) || other.male == male));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, verified, email, displayName,
      filled, dateOfBirth, weight, male);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);
}

abstract class _User implements User {
  const factory _User(
      {required final UniqueId id,
      required final bool verified,
      required final String email,
      required final DisplayName displayName,
      required final bool filled,
      required final DateOfBirth dateOfBirth,
      required final Weight weight,
      required final bool male}) = _$_User;

  @override
  UniqueId get id;
  @override
  bool get verified;
  @override
  String get email;
  @override
  DisplayName get displayName;
  @override
  bool get filled;
  @override
  DateOfBirth get dateOfBirth;
  @override
  Weight get weight;
  @override
  bool get male;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
