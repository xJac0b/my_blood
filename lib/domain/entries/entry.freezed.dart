// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Entry {
  UniqueId get id => throw _privateConstructorUsedError;
  EntryTitle get title => throw _privateConstructorUsedError;
  EntryDate get date => throw _privateConstructorUsedError;
  Results get results => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntryCopyWith<Entry> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryCopyWith<$Res> {
  factory $EntryCopyWith(Entry value, $Res Function(Entry) then) =
      _$EntryCopyWithImpl<$Res, Entry>;
  @useResult
  $Res call({UniqueId id, EntryTitle title, EntryDate date, Results results});

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$EntryCopyWithImpl<$Res, $Val extends Entry>
    implements $EntryCopyWith<$Res> {
  _$EntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? results = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as EntryTitle,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as EntryDate,
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
abstract class _$$_EntryCopyWith<$Res> implements $EntryCopyWith<$Res> {
  factory _$$_EntryCopyWith(_$_Entry value, $Res Function(_$_Entry) then) =
      __$$_EntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueId id, EntryTitle title, EntryDate date, Results results});

  @override
  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class __$$_EntryCopyWithImpl<$Res> extends _$EntryCopyWithImpl<$Res, _$_Entry>
    implements _$$_EntryCopyWith<$Res> {
  __$$_EntryCopyWithImpl(_$_Entry _value, $Res Function(_$_Entry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? results = null,
  }) {
    return _then(_$_Entry(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as EntryTitle,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as EntryDate,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Results,
    ));
  }
}

/// @nodoc

class _$_Entry extends _Entry {
  _$_Entry(
      {required this.id,
      required this.title,
      required this.date,
      required this.results})
      : super._();

  @override
  final UniqueId id;
  @override
  final EntryTitle title;
  @override
  final EntryDate date;
  @override
  final Results results;

  @override
  String toString() {
    return 'Entry(id: $id, title: $title, date: $date, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Entry &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.results, results) || other.results == results));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, title, date, results);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      __$$_EntryCopyWithImpl<_$_Entry>(this, _$identity);
}

abstract class _Entry extends Entry {
  factory _Entry(
      {required final UniqueId id,
      required final EntryTitle title,
      required final EntryDate date,
      required final Results results}) = _$_Entry;
  _Entry._() : super._();

  @override
  UniqueId get id;
  @override
  EntryTitle get title;
  @override
  EntryDate get date;
  @override
  Results get results;
  @override
  @JsonKey(ignore: true)
  _$$_EntryCopyWith<_$_Entry> get copyWith =>
      throw _privateConstructorUsedError;
}
