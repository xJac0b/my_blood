// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EntryDto _$EntryDtoFromJson(Map<String, dynamic> json) {
  return _EntryDto.fromJson(json);
}

/// @nodoc
mixin _$EntryDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  Map<String, Map<String, Map<String, double>>> get results =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EntryDtoCopyWith<EntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryDtoCopyWith<$Res> {
  factory $EntryDtoCopyWith(EntryDto value, $Res Function(EntryDto) then) =
      _$EntryDtoCopyWithImpl<$Res, EntryDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      Map<String, Map<String, Map<String, double>>> results});
}

/// @nodoc
class _$EntryDtoCopyWithImpl<$Res, $Val extends EntryDto>
    implements $EntryDtoCopyWith<$Res> {
  _$EntryDtoCopyWithImpl(this._value, this._then);

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
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, Map<String, double>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EntryDtoCopyWith<$Res> implements $EntryDtoCopyWith<$Res> {
  factory _$$_EntryDtoCopyWith(
          _$_EntryDto value, $Res Function(_$_EntryDto) then) =
      __$$_EntryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      DateTime date,
      Map<String, Map<String, Map<String, double>>> results});
}

/// @nodoc
class __$$_EntryDtoCopyWithImpl<$Res>
    extends _$EntryDtoCopyWithImpl<$Res, _$_EntryDto>
    implements _$$_EntryDtoCopyWith<$Res> {
  __$$_EntryDtoCopyWithImpl(
      _$_EntryDto _value, $Res Function(_$_EntryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? date = null,
    Object? results = null,
  }) {
    return _then(_$_EntryDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, Map<String, double>>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EntryDto extends _EntryDto {
  const _$_EntryDto(
      {required this.id,
      required this.title,
      required this.date,
      required final Map<String, Map<String, Map<String, double>>> results})
      : _results = results,
        super._();

  factory _$_EntryDto.fromJson(Map<String, dynamic> json) =>
      _$$_EntryDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime date;
  final Map<String, Map<String, Map<String, double>>> _results;
  @override
  Map<String, Map<String, Map<String, double>>> get results {
    if (_results is EqualUnmodifiableMapView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_results);
  }

  @override
  String toString() {
    return 'EntryDto(id: $id, title: $title, date: $date, results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            const DeepCollectionEquality().equals(other._results, _results));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, date,
      const DeepCollectionEquality().hash(_results));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryDtoCopyWith<_$_EntryDto> get copyWith =>
      __$$_EntryDtoCopyWithImpl<_$_EntryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EntryDtoToJson(
      this,
    );
  }
}

abstract class _EntryDto extends EntryDto {
  const factory _EntryDto(
      {required final String id,
      required final String title,
      required final DateTime date,
      required final Map<String, Map<String, Map<String, double>>>
          results}) = _$_EntryDto;
  const _EntryDto._() : super._();

  factory _EntryDto.fromJson(Map<String, dynamic> json) = _$_EntryDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  DateTime get date;
  @override
  Map<String, Map<String, Map<String, double>>> get results;
  @override
  @JsonKey(ignore: true)
  _$$_EntryDtoCopyWith<_$_EntryDto> get copyWith =>
      throw _privateConstructorUsedError;
}
