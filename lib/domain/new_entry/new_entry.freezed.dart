// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewEntry {
  NewEntryTitle get title => throw _privateConstructorUsedError;
  NewEntryDate get date => throw _privateConstructorUsedError;
  Results get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewEntryCopyWith<NewEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEntryCopyWith<$Res> {
  factory $NewEntryCopyWith(NewEntry value, $Res Function(NewEntry) then) =
      _$NewEntryCopyWithImpl<$Res, NewEntry>;
  @useResult
  $Res call({NewEntryTitle title, NewEntryDate date, Results results});

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$NewEntryCopyWithImpl<$Res, $Val extends NewEntry>
    implements $NewEntryCopyWith<$Res> {
  _$NewEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NewEntryTitle,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as NewEntryDate,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResultsCopyWith<$Res> get results {
    return $ResultsCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewEntryCopyWith<$Res> implements $NewEntryCopyWith<$Res> {
  factory _$$_NewEntryCopyWith(
          _$_NewEntry value, $Res Function(_$_NewEntry) then) =
      __$$_NewEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NewEntryTitle title, NewEntryDate date, Results results});

  @override
  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class __$$_NewEntryCopyWithImpl<$Res>
    extends _$NewEntryCopyWithImpl<$Res, _$_NewEntry>
    implements _$$_NewEntryCopyWith<$Res> {
  __$$_NewEntryCopyWithImpl(
      _$_NewEntry _value, $Res Function(_$_NewEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? date = null,
    Object? results = null,
  }) {
    return _then(_$_NewEntry(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as NewEntryTitle,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as NewEntryDate,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results,
    ));
  }
}

/// @nodoc

class _$_NewEntry extends _NewEntry {
  _$_NewEntry({required this.title, required this.date, required this.results})
      : super._();

  @override
  final NewEntryTitle title;
  @override
  final NewEntryDate date;
  @override
  final Results results;

  @override
  String toString() {
    return 'NewEntry(title: $title, date: $date, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewEntry &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.results, results) || other.results == results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, date, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewEntryCopyWith<_$_NewEntry> get copyWith =>
      __$$_NewEntryCopyWithImpl<_$_NewEntry>(this, _$identity);
}

abstract class _NewEntry extends NewEntry {
  factory _NewEntry(
      {required final NewEntryTitle title,
      required final NewEntryDate date,
      required final Results results}) = _$_NewEntry;
  _NewEntry._() : super._();

  @override
  NewEntryTitle get title;
  @override
  NewEntryDate get date;
  @override
  Results get results;
  @override
  @JsonKey(ignore: true)
  _$$_NewEntryCopyWith<_$_NewEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
