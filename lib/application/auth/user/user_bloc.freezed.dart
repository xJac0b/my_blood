// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoadUserCopyWith<$Res> {
  factory _$$LoadUserCopyWith(
          _$LoadUser value, $Res Function(_$LoadUser) then) =
      __$$LoadUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$LoadUser>
    implements _$$LoadUserCopyWith<$Res> {
  __$$LoadUserCopyWithImpl(_$LoadUser _value, $Res Function(_$LoadUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadUser implements LoadUser {
  const _$LoadUser();

  @override
  String toString() {
    return 'UserEvent.loadUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) {
    return loadUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) {
    return loadUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) {
    return loadUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return loadUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (loadUser != null) {
      return loadUser(this);
    }
    return orElse();
  }
}

abstract class LoadUser implements UserEvent {
  const factory LoadUser() = _$LoadUser;
}

/// @nodoc
abstract class _$$NameChangedCopyWith<$Res> {
  factory _$$NameChangedCopyWith(
          _$NameChanged value, $Res Function(_$NameChanged) then) =
      __$$NameChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$NameChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$NameChanged>
    implements _$$NameChangedCopyWith<$Res> {
  __$$NameChangedCopyWithImpl(
      _$NameChanged _value, $Res Function(_$NameChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$NameChanged(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NameChanged implements NameChanged {
  const _$NameChanged({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'UserEvent.nameChanged(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameChanged &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      __$$NameChangedCopyWithImpl<_$NameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) {
    return nameChanged(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) {
    return nameChanged?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) {
    return nameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return nameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (nameChanged != null) {
      return nameChanged(this);
    }
    return orElse();
  }
}

abstract class NameChanged implements UserEvent {
  const factory NameChanged({required final String name}) = _$NameChanged;

  String get name;
  @JsonKey(ignore: true)
  _$$NameChangedCopyWith<_$NameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenderChangedCopyWith<$Res> {
  factory _$$GenderChangedCopyWith(
          _$GenderChanged value, $Res Function(_$GenderChanged) then) =
      __$$GenderChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({bool male});
}

/// @nodoc
class __$$GenderChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GenderChanged>
    implements _$$GenderChangedCopyWith<$Res> {
  __$$GenderChangedCopyWithImpl(
      _$GenderChanged _value, $Res Function(_$GenderChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? male = null,
  }) {
    return _then(_$GenderChanged(
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$GenderChanged implements GenderChanged {
  const _$GenderChanged({required this.male});

  @override
  final bool male;

  @override
  String toString() {
    return 'UserEvent.genderChanged(male: $male)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenderChanged &&
            (identical(other.male, male) || other.male == male));
  }

  @override
  int get hashCode => Object.hash(runtimeType, male);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GenderChangedCopyWith<_$GenderChanged> get copyWith =>
      __$$GenderChangedCopyWithImpl<_$GenderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) {
    return genderChanged(male);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) {
    return genderChanged?.call(male);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(male);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) {
    return genderChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return genderChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (genderChanged != null) {
      return genderChanged(this);
    }
    return orElse();
  }
}

abstract class GenderChanged implements UserEvent {
  const factory GenderChanged({required final bool male}) = _$GenderChanged;

  bool get male;
  @JsonKey(ignore: true)
  _$$GenderChangedCopyWith<_$GenderChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DateOfBirthChangedCopyWith<$Res> {
  factory _$$DateOfBirthChangedCopyWith(_$DateOfBirthChanged value,
          $Res Function(_$DateOfBirthChanged) then) =
      __$$DateOfBirthChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$DateOfBirthChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$DateOfBirthChanged>
    implements _$$DateOfBirthChangedCopyWith<$Res> {
  __$$DateOfBirthChangedCopyWithImpl(
      _$DateOfBirthChanged _value, $Res Function(_$DateOfBirthChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$DateOfBirthChanged(
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$DateOfBirthChanged implements DateOfBirthChanged {
  const _$DateOfBirthChanged({required this.date});

  @override
  final DateTime date;

  @override
  String toString() {
    return 'UserEvent.dateOfBirthChanged(date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DateOfBirthChanged &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DateOfBirthChangedCopyWith<_$DateOfBirthChanged> get copyWith =>
      __$$DateOfBirthChangedCopyWithImpl<_$DateOfBirthChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) {
    return dateOfBirthChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) {
    return dateOfBirthChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) {
    return dateOfBirthChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return dateOfBirthChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateOfBirthChanged != null) {
      return dateOfBirthChanged(this);
    }
    return orElse();
  }
}

abstract class DateOfBirthChanged implements UserEvent {
  const factory DateOfBirthChanged({required final DateTime date}) =
      _$DateOfBirthChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$DateOfBirthChangedCopyWith<_$DateOfBirthChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WeightChangedCopyWith<$Res> {
  factory _$$WeightChangedCopyWith(
          _$WeightChanged value, $Res Function(_$WeightChanged) then) =
      __$$WeightChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({double weight});
}

/// @nodoc
class __$$WeightChangedCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$WeightChanged>
    implements _$$WeightChangedCopyWith<$Res> {
  __$$WeightChangedCopyWithImpl(
      _$WeightChanged _value, $Res Function(_$WeightChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weight = null,
  }) {
    return _then(_$WeightChanged(
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$WeightChanged implements WeightChanged {
  const _$WeightChanged({required this.weight});

  @override
  final double weight;

  @override
  String toString() {
    return 'UserEvent.weightChanged(weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WeightChanged &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WeightChangedCopyWith<_$WeightChanged> get copyWith =>
      __$$WeightChangedCopyWithImpl<_$WeightChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) {
    return weightChanged(weight);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) {
    return weightChanged?.call(weight);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (weightChanged != null) {
      return weightChanged(weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) {
    return weightChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return weightChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (weightChanged != null) {
      return weightChanged(this);
    }
    return orElse();
  }
}

abstract class WeightChanged implements UserEvent {
  const factory WeightChanged({required final double weight}) = _$WeightChanged;

  double get weight;
  @JsonKey(ignore: true)
  _$$WeightChangedCopyWith<_$WeightChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SavedCopyWith<$Res> {
  factory _$$SavedCopyWith(_$Saved value, $Res Function(_$Saved) then) =
      __$$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SavedCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res, _$Saved>
    implements _$$SavedCopyWith<$Res> {
  __$$SavedCopyWithImpl(_$Saved _value, $Res Function(_$Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Saved implements Saved {
  const _$Saved();

  @override
  String toString() {
    return 'UserEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadUser,
    required TResult Function(String name) nameChanged,
    required TResult Function(bool male) genderChanged,
    required TResult Function(DateTime date) dateOfBirthChanged,
    required TResult Function(double weight) weightChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadUser,
    TResult? Function(String name)? nameChanged,
    TResult? Function(bool male)? genderChanged,
    TResult? Function(DateTime date)? dateOfBirthChanged,
    TResult? Function(double weight)? weightChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadUser,
    TResult Function(String name)? nameChanged,
    TResult Function(bool male)? genderChanged,
    TResult Function(DateTime date)? dateOfBirthChanged,
    TResult Function(double weight)? weightChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadUser value) loadUser,
    required TResult Function(NameChanged value) nameChanged,
    required TResult Function(GenderChanged value) genderChanged,
    required TResult Function(DateOfBirthChanged value) dateOfBirthChanged,
    required TResult Function(WeightChanged value) weightChanged,
    required TResult Function(Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadUser value)? loadUser,
    TResult? Function(NameChanged value)? nameChanged,
    TResult? Function(GenderChanged value)? genderChanged,
    TResult? Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult? Function(WeightChanged value)? weightChanged,
    TResult? Function(Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadUser value)? loadUser,
    TResult Function(NameChanged value)? nameChanged,
    TResult Function(GenderChanged value)? genderChanged,
    TResult Function(DateOfBirthChanged value)? dateOfBirthChanged,
    TResult Function(WeightChanged value)? weightChanged,
    TResult Function(Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class Saved implements UserEvent {
  const factory Saved() = _$Saved;
}

/// @nodoc
mixin _$UserState {
  User? get user => throw _privateConstructorUsedError;
  AutovalidateMode? get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call(
      {User? user, AutovalidateMode? showErrorMessages, bool isSubmitting});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = null,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$$_UserStateCopyWith(
          _$_UserState value, $Res Function(_$_UserState) then) =
      __$$_UserStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {User? user, AutovalidateMode? showErrorMessages, bool isSubmitting});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$_UserStateCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$_UserState>
    implements _$$_UserStateCopyWith<$Res> {
  __$$_UserStateCopyWithImpl(
      _$_UserState _value, $Res Function(_$_UserState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = null,
  }) {
    return _then(_$_UserState(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UserState extends _UserState {
  _$_UserState({this.user, this.showErrorMessages, required this.isSubmitting})
      : super._();

  @override
  final User? user;
  @override
  final AutovalidateMode? showErrorMessages;
  @override
  final bool isSubmitting;

  @override
  String toString() {
    return 'UserState(user: $user, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, user, showErrorMessages, isSubmitting);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      __$$_UserStateCopyWithImpl<_$_UserState>(this, _$identity);
}

abstract class _UserState extends UserState {
  factory _UserState(
      {final User? user,
      final AutovalidateMode? showErrorMessages,
      required final bool isSubmitting}) = _$_UserState;
  _UserState._() : super._();

  @override
  User? get user;
  @override
  AutovalidateMode? get showErrorMessages;
  @override
  bool get isSubmitting;
  @override
  @JsonKey(ignore: true)
  _$$_UserStateCopyWith<_$_UserState> get copyWith =>
      throw _privateConstructorUsedError;
}
