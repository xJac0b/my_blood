// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'results.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Results {
  Map<String, Map<String, UnitValue>> get results =>
      throw _privateConstructorUsedError;
  List<String> get categoriesOrder => throw _privateConstructorUsedError;
  Map<String, List<String>> get elementsOrder =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call(
      {Map<String, Map<String, UnitValue>> results,
      List<String> categoriesOrder,
      Map<String, List<String>> elementsOrder});
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? categoriesOrder = null,
    Object? elementsOrder = null,
  }) {
    return _then(_value.copyWith(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, UnitValue>>,
      categoriesOrder: null == categoriesOrder
          ? _value.categoriesOrder
          : categoriesOrder // ignore: cast_nullable_to_non_nullable
              as List<String>,
      elementsOrder: null == elementsOrder
          ? _value.elementsOrder
          : elementsOrder // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResultsCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$_ResultsCopyWith(
          _$_Results value, $Res Function(_$_Results) then) =
      __$$_ResultsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Map<String, Map<String, UnitValue>> results,
      List<String> categoriesOrder,
      Map<String, List<String>> elementsOrder});
}

/// @nodoc
class __$$_ResultsCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$_Results>
    implements _$$_ResultsCopyWith<$Res> {
  __$$_ResultsCopyWithImpl(_$_Results _value, $Res Function(_$_Results) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? results = null,
    Object? categoriesOrder = null,
    Object? elementsOrder = null,
  }) {
    return _then(_$_Results(
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as Map<String, Map<String, UnitValue>>,
      categoriesOrder: null == categoriesOrder
          ? _value.categoriesOrder
          : categoriesOrder // ignore: cast_nullable_to_non_nullable
              as List<String>,
      elementsOrder: null == elementsOrder
          ? _value.elementsOrder
          : elementsOrder // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc

class _$_Results extends _Results with DiagnosticableTreeMixin {
  _$_Results(
      {required this.results,
      this.categoriesOrder = const [],
      this.elementsOrder = const {}})
      : super._();

  @override
  final Map<String, Map<String, UnitValue>> results;
  @override
  @JsonKey()
  final List<String> categoriesOrder;
  @override
  @JsonKey()
  final Map<String, List<String>> elementsOrder;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Results(results: $results, categoriesOrder: $categoriesOrder, elementsOrder: $elementsOrder)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Results'))
      ..add(DiagnosticsProperty('results', results))
      ..add(DiagnosticsProperty('categoriesOrder', categoriesOrder))
      ..add(DiagnosticsProperty('elementsOrder', elementsOrder));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Results &&
            const DeepCollectionEquality().equals(other.results, results) &&
            const DeepCollectionEquality()
                .equals(other.categoriesOrder, categoriesOrder) &&
            const DeepCollectionEquality()
                .equals(other.elementsOrder, elementsOrder));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(results),
      const DeepCollectionEquality().hash(categoriesOrder),
      const DeepCollectionEquality().hash(elementsOrder));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      __$$_ResultsCopyWithImpl<_$_Results>(this, _$identity);
}

abstract class _Results extends Results {
  factory _Results(
      {required final Map<String, Map<String, UnitValue>> results,
      final List<String> categoriesOrder,
      final Map<String, List<String>> elementsOrder}) = _$_Results;
  _Results._() : super._();

  @override
  Map<String, Map<String, UnitValue>> get results;
  @override
  List<String> get categoriesOrder;
  @override
  Map<String, List<String>> get elementsOrder;
  @override
  @JsonKey(ignore: true)
  _$$_ResultsCopyWith<_$_Results> get copyWith =>
      throw _privateConstructorUsedError;
}
