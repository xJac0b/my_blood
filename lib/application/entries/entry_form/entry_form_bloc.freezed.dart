// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'entry_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EntryFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryFormEventCopyWith<$Res> {
  factory $EntryFormEventCopyWith(
          EntryFormEvent value, $Res Function(EntryFormEvent) then) =
      _$EntryFormEventCopyWithImpl<$Res, EntryFormEvent>;
}

/// @nodoc
class _$EntryFormEventCopyWithImpl<$Res, $Val extends EntryFormEvent>
    implements $EntryFormEventCopyWith<$Res> {
  _$EntryFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializedCopyWith<$Res> {
  factory _$$_InitializedCopyWith(
          _$_Initialized value, $Res Function(_$_Initialized) then) =
      __$$_InitializedCopyWithImpl<$Res>;
  @useResult
  $Res call({Entry? entry});

  $EntryCopyWith<$Res>? get entry;
}

/// @nodoc
class __$$_InitializedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_Initialized>
    implements _$$_InitializedCopyWith<$Res> {
  __$$_InitializedCopyWithImpl(
      _$_Initialized _value, $Res Function(_$_Initialized) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? entry = freezed,
  }) {
    return _then(_$_Initialized(
      freezed == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EntryCopyWith<$Res>? get entry {
    if (_value.entry == null) {
      return null;
    }

    return $EntryCopyWith<$Res>(_value.entry!, (value) {
      return _then(_value.copyWith(entry: value));
    });
  }
}

/// @nodoc

class _$_Initialized with DiagnosticableTreeMixin implements _Initialized {
  const _$_Initialized(this.entry);

  @override
  final Entry? entry;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.initialized(entry: $entry)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.initialized'))
      ..add(DiagnosticsProperty('entry', entry));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initialized &&
            (identical(other.entry, entry) || other.entry == entry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, entry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      __$$_InitializedCopyWithImpl<_$_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return initialized(entry);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return initialized?.call(entry);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(entry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements EntryFormEvent {
  const factory _Initialized(final Entry? entry) = _$_Initialized;

  Entry? get entry;
  @JsonKey(ignore: true)
  _$$_InitializedCopyWith<_$_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_PageChangedCopyWith<$Res> {
  factory _$$_PageChangedCopyWith(
          _$_PageChanged value, $Res Function(_$_PageChanged) then) =
      __$$_PageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({EntryFormPages pageIndex});
}

/// @nodoc
class __$$_PageChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_PageChanged>
    implements _$$_PageChangedCopyWith<$Res> {
  __$$_PageChangedCopyWithImpl(
      _$_PageChanged _value, $Res Function(_$_PageChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$_PageChanged(
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as EntryFormPages,
    ));
  }
}

/// @nodoc

class _$_PageChanged with DiagnosticableTreeMixin implements _PageChanged {
  const _$_PageChanged(this.pageIndex);

  @override
  final EntryFormPages pageIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.pageChanged(pageIndex: $pageIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.pageChanged'))
      ..add(DiagnosticsProperty('pageIndex', pageIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PageChanged &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PageChangedCopyWith<_$_PageChanged> get copyWith =>
      __$$_PageChangedCopyWithImpl<_$_PageChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return pageChanged(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return pageChanged?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements EntryFormEvent {
  const factory _PageChanged(final EntryFormPages pageIndex) = _$_PageChanged;

  EntryFormPages get pageIndex;
  @JsonKey(ignore: true)
  _$$_PageChangedCopyWith<_$_PageChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateChangedCopyWith<$Res> {
  factory _$$_DateChangedCopyWith(
          _$_DateChanged value, $Res Function(_$_DateChanged) then) =
      __$$_DateChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime date});
}

/// @nodoc
class __$$_DateChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_DateChanged>
    implements _$$_DateChangedCopyWith<$Res> {
  __$$_DateChangedCopyWithImpl(
      _$_DateChanged _value, $Res Function(_$_DateChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = null,
  }) {
    return _then(_$_DateChanged(
      null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_DateChanged with DiagnosticableTreeMixin implements _DateChanged {
  const _$_DateChanged(this.date);

  @override
  final DateTime date;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.dateChanged(date: $date)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.dateChanged'))
      ..add(DiagnosticsProperty('date', date));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateChanged &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(runtimeType, date);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateChangedCopyWith<_$_DateChanged> get copyWith =>
      __$$_DateChangedCopyWithImpl<_$_DateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(date);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements EntryFormEvent {
  const factory _DateChanged(final DateTime date) = _$_DateChanged;

  DateTime get date;
  @JsonKey(ignore: true)
  _$$_DateChangedCopyWith<_$_DateChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TitleChangedCopyWith<$Res> {
  factory _$$_TitleChangedCopyWith(
          _$_TitleChanged value, $Res Function(_$_TitleChanged) then) =
      __$$_TitleChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$_TitleChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_TitleChanged>
    implements _$$_TitleChangedCopyWith<$Res> {
  __$$_TitleChangedCopyWithImpl(
      _$_TitleChanged _value, $Res Function(_$_TitleChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$_TitleChanged(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged with DiagnosticableTreeMixin implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.titleChanged(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.titleChanged'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TitleChanged &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      __$$_TitleChangedCopyWithImpl<_$_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements EntryFormEvent {
  const factory _TitleChanged(final String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryAddedCopyWith<$Res> {
  factory _$$_CategoryAddedCopyWith(
          _$_CategoryAdded value, $Res Function(_$_CategoryAdded) then) =
      __$$_CategoryAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$_CategoryAddedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_CategoryAdded>
    implements _$$_CategoryAddedCopyWith<$Res> {
  __$$_CategoryAddedCopyWithImpl(
      _$_CategoryAdded _value, $Res Function(_$_CategoryAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_CategoryAdded(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryAdded with DiagnosticableTreeMixin implements _CategoryAdded {
  const _$_CategoryAdded(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.categoryAdded(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.categoryAdded'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryAdded &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryAddedCopyWith<_$_CategoryAdded> get copyWith =>
      __$$_CategoryAddedCopyWithImpl<_$_CategoryAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return categoryAdded(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return categoryAdded?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryAdded != null) {
      return categoryAdded(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryAdded != null) {
      return categoryAdded(this);
    }
    return orElse();
  }
}

abstract class _CategoryAdded implements EntryFormEvent {
  const factory _CategoryAdded(final String category) = _$_CategoryAdded;

  String get category;
  @JsonKey(ignore: true)
  _$$_CategoryAddedCopyWith<_$_CategoryAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ElementAddedCopyWith<$Res> {
  factory _$$_ElementAddedCopyWith(
          _$_ElementAdded value, $Res Function(_$_ElementAdded) then) =
      __$$_ElementAddedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String element});
}

/// @nodoc
class __$$_ElementAddedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_ElementAdded>
    implements _$$_ElementAddedCopyWith<$Res> {
  __$$_ElementAddedCopyWithImpl(
      _$_ElementAdded _value, $Res Function(_$_ElementAdded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? element = null,
  }) {
    return _then(_$_ElementAdded(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ElementAdded with DiagnosticableTreeMixin implements _ElementAdded {
  const _$_ElementAdded(this.category, this.element);

  @override
  final String category;
  @override
  final String element;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.elementAdded(category: $category, element: $element)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.elementAdded'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('element', element));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementAdded &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.element, element) || other.element == element));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, element);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElementAddedCopyWith<_$_ElementAdded> get copyWith =>
      __$$_ElementAddedCopyWithImpl<_$_ElementAdded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return elementAdded(category, element);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return elementAdded?.call(category, element);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (elementAdded != null) {
      return elementAdded(category, element);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return elementAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return elementAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (elementAdded != null) {
      return elementAdded(this);
    }
    return orElse();
  }
}

abstract class _ElementAdded implements EntryFormEvent {
  const factory _ElementAdded(final String category, final String element) =
      _$_ElementAdded;

  String get category;
  String get element;
  @JsonKey(ignore: true)
  _$$_ElementAddedCopyWith<_$_ElementAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryRemovedCopyWith<$Res> {
  factory _$$_CategoryRemovedCopyWith(
          _$_CategoryRemoved value, $Res Function(_$_CategoryRemoved) then) =
      __$$_CategoryRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$_CategoryRemovedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_CategoryRemoved>
    implements _$$_CategoryRemovedCopyWith<$Res> {
  __$$_CategoryRemovedCopyWithImpl(
      _$_CategoryRemoved _value, $Res Function(_$_CategoryRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$_CategoryRemoved(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryRemoved
    with DiagnosticableTreeMixin
    implements _CategoryRemoved {
  const _$_CategoryRemoved(this.category);

  @override
  final String category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.categoryRemoved(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.categoryRemoved'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryRemoved &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryRemovedCopyWith<_$_CategoryRemoved> get copyWith =>
      __$$_CategoryRemovedCopyWithImpl<_$_CategoryRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return categoryRemoved(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return categoryRemoved?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryRemoved != null) {
      return categoryRemoved(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryRemoved != null) {
      return categoryRemoved(this);
    }
    return orElse();
  }
}

abstract class _CategoryRemoved implements EntryFormEvent {
  const factory _CategoryRemoved(final String category) = _$_CategoryRemoved;

  String get category;
  @JsonKey(ignore: true)
  _$$_CategoryRemovedCopyWith<_$_CategoryRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CategoryChangedCopyWith<$Res> {
  factory _$$_CategoryChangedCopyWith(
          _$_CategoryChanged value, $Res Function(_$_CategoryChanged) then) =
      __$$_CategoryChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String oldCategory, String newCategory});
}

/// @nodoc
class __$$_CategoryChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_CategoryChanged>
    implements _$$_CategoryChangedCopyWith<$Res> {
  __$$_CategoryChangedCopyWithImpl(
      _$_CategoryChanged _value, $Res Function(_$_CategoryChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldCategory = null,
    Object? newCategory = null,
  }) {
    return _then(_$_CategoryChanged(
      null == oldCategory
          ? _value.oldCategory
          : oldCategory // ignore: cast_nullable_to_non_nullable
              as String,
      null == newCategory
          ? _value.newCategory
          : newCategory // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CategoryChanged
    with DiagnosticableTreeMixin
    implements _CategoryChanged {
  const _$_CategoryChanged(this.oldCategory, this.newCategory);

  @override
  final String oldCategory;
  @override
  final String newCategory;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.categoryChanged(oldCategory: $oldCategory, newCategory: $newCategory)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.categoryChanged'))
      ..add(DiagnosticsProperty('oldCategory', oldCategory))
      ..add(DiagnosticsProperty('newCategory', newCategory));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoryChanged &&
            (identical(other.oldCategory, oldCategory) ||
                other.oldCategory == oldCategory) &&
            (identical(other.newCategory, newCategory) ||
                other.newCategory == newCategory));
  }

  @override
  int get hashCode => Object.hash(runtimeType, oldCategory, newCategory);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryChangedCopyWith<_$_CategoryChanged> get copyWith =>
      __$$_CategoryChangedCopyWithImpl<_$_CategoryChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return categoryChanged(oldCategory, newCategory);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return categoryChanged?.call(oldCategory, newCategory);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(oldCategory, newCategory);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return categoryChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return categoryChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (categoryChanged != null) {
      return categoryChanged(this);
    }
    return orElse();
  }
}

abstract class _CategoryChanged implements EntryFormEvent {
  const factory _CategoryChanged(
      final String oldCategory, final String newCategory) = _$_CategoryChanged;

  String get oldCategory;
  String get newCategory;
  @JsonKey(ignore: true)
  _$$_CategoryChangedCopyWith<_$_CategoryChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ElementRemovedCopyWith<$Res> {
  factory _$$_ElementRemovedCopyWith(
          _$_ElementRemoved value, $Res Function(_$_ElementRemoved) then) =
      __$$_ElementRemovedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String element});
}

/// @nodoc
class __$$_ElementRemovedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_ElementRemoved>
    implements _$$_ElementRemovedCopyWith<$Res> {
  __$$_ElementRemovedCopyWithImpl(
      _$_ElementRemoved _value, $Res Function(_$_ElementRemoved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? element = null,
  }) {
    return _then(_$_ElementRemoved(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ElementRemoved
    with DiagnosticableTreeMixin
    implements _ElementRemoved {
  const _$_ElementRemoved(this.category, this.element);

  @override
  final String category;
  @override
  final String element;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.elementRemoved(category: $category, element: $element)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.elementRemoved'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('element', element));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementRemoved &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.element, element) || other.element == element));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, element);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElementRemovedCopyWith<_$_ElementRemoved> get copyWith =>
      __$$_ElementRemovedCopyWithImpl<_$_ElementRemoved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return elementRemoved(category, element);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return elementRemoved?.call(category, element);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (elementRemoved != null) {
      return elementRemoved(category, element);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return elementRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return elementRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (elementRemoved != null) {
      return elementRemoved(this);
    }
    return orElse();
  }
}

abstract class _ElementRemoved implements EntryFormEvent {
  const factory _ElementRemoved(final String category, final String element) =
      _$_ElementRemoved;

  String get category;
  String get element;
  @JsonKey(ignore: true)
  _$$_ElementRemovedCopyWith<_$_ElementRemoved> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ElementChangedCopyWith<$Res> {
  factory _$$_ElementChangedCopyWith(
          _$_ElementChanged value, $Res Function(_$_ElementChanged) then) =
      __$$_ElementChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String oldElement, String newElement});
}

/// @nodoc
class __$$_ElementChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_ElementChanged>
    implements _$$_ElementChangedCopyWith<$Res> {
  __$$_ElementChangedCopyWithImpl(
      _$_ElementChanged _value, $Res Function(_$_ElementChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? oldElement = null,
    Object? newElement = null,
  }) {
    return _then(_$_ElementChanged(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == oldElement
          ? _value.oldElement
          : oldElement // ignore: cast_nullable_to_non_nullable
              as String,
      null == newElement
          ? _value.newElement
          : newElement // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ElementChanged
    with DiagnosticableTreeMixin
    implements _ElementChanged {
  const _$_ElementChanged(this.category, this.oldElement, this.newElement);

  @override
  final String category;
  @override
  final String oldElement;
  @override
  final String newElement;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.elementChanged(category: $category, oldElement: $oldElement, newElement: $newElement)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.elementChanged'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('oldElement', oldElement))
      ..add(DiagnosticsProperty('newElement', newElement));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ElementChanged &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.oldElement, oldElement) ||
                other.oldElement == oldElement) &&
            (identical(other.newElement, newElement) ||
                other.newElement == newElement));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, category, oldElement, newElement);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ElementChangedCopyWith<_$_ElementChanged> get copyWith =>
      __$$_ElementChangedCopyWithImpl<_$_ElementChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return elementChanged(category, oldElement, newElement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return elementChanged?.call(category, oldElement, newElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (elementChanged != null) {
      return elementChanged(category, oldElement, newElement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return elementChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return elementChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (elementChanged != null) {
      return elementChanged(this);
    }
    return orElse();
  }
}

abstract class _ElementChanged implements EntryFormEvent {
  const factory _ElementChanged(final String category, final String oldElement,
      final String newElement) = _$_ElementChanged;

  String get category;
  String get oldElement;
  String get newElement;
  @JsonKey(ignore: true)
  _$$_ElementChangedCopyWith<_$_ElementChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnitChangedCopyWith<$Res> {
  factory _$$_UnitChangedCopyWith(
          _$_UnitChanged value, $Res Function(_$_UnitChanged) then) =
      __$$_UnitChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String element, int unitIndex});
}

/// @nodoc
class __$$_UnitChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_UnitChanged>
    implements _$$_UnitChangedCopyWith<$Res> {
  __$$_UnitChangedCopyWithImpl(
      _$_UnitChanged _value, $Res Function(_$_UnitChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? element = null,
    Object? unitIndex = null,
  }) {
    return _then(_$_UnitChanged(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
      null == unitIndex
          ? _value.unitIndex
          : unitIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UnitChanged with DiagnosticableTreeMixin implements _UnitChanged {
  const _$_UnitChanged(this.category, this.element, this.unitIndex);

  @override
  final String category;
  @override
  final String element;
  @override
  final int unitIndex;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.unitChanged(category: $category, element: $element, unitIndex: $unitIndex)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.unitChanged'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('element', element))
      ..add(DiagnosticsProperty('unitIndex', unitIndex));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UnitChanged &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.unitIndex, unitIndex) ||
                other.unitIndex == unitIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, element, unitIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnitChangedCopyWith<_$_UnitChanged> get copyWith =>
      __$$_UnitChangedCopyWithImpl<_$_UnitChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return unitChanged(category, element, unitIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return unitChanged?.call(category, element, unitIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(category, element, unitIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return unitChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return unitChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (unitChanged != null) {
      return unitChanged(this);
    }
    return orElse();
  }
}

abstract class _UnitChanged implements EntryFormEvent {
  const factory _UnitChanged(
          final String category, final String element, final int unitIndex) =
      _$_UnitChanged;

  String get category;
  String get element;
  int get unitIndex;
  @JsonKey(ignore: true)
  _$$_UnitChangedCopyWith<_$_UnitChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ValueChangedCopyWith<$Res> {
  factory _$$_ValueChangedCopyWith(
          _$_ValueChanged value, $Res Function(_$_ValueChanged) then) =
      __$$_ValueChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String category, String element, double value});
}

/// @nodoc
class __$$_ValueChangedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_ValueChanged>
    implements _$$_ValueChangedCopyWith<$Res> {
  __$$_ValueChangedCopyWithImpl(
      _$_ValueChanged _value, $Res Function(_$_ValueChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
    Object? element = null,
    Object? value = null,
  }) {
    return _then(_$_ValueChanged(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      null == element
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as String,
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ValueChanged with DiagnosticableTreeMixin implements _ValueChanged {
  const _$_ValueChanged(this.category, this.element, this.value);

  @override
  final String category;
  @override
  final String element;
  @override
  final double value;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.valueChanged(category: $category, element: $element, value: $value)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormEvent.valueChanged'))
      ..add(DiagnosticsProperty('category', category))
      ..add(DiagnosticsProperty('element', element))
      ..add(DiagnosticsProperty('value', value));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ValueChanged &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.element, element) || other.element == element) &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category, element, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ValueChangedCopyWith<_$_ValueChanged> get copyWith =>
      __$$_ValueChangedCopyWithImpl<_$_ValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return valueChanged(category, element, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return valueChanged?.call(category, element, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(category, element, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return valueChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return valueChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (valueChanged != null) {
      return valueChanged(this);
    }
    return orElse();
  }
}

abstract class _ValueChanged implements EntryFormEvent {
  const factory _ValueChanged(
          final String category, final String element, final double value) =
      _$_ValueChanged;

  String get category;
  String get element;
  double get value;
  @JsonKey(ignore: true)
  _$$_ValueChangedCopyWith<_$_ValueChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$EntryFormEventCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormEvent.saved()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'EntryFormEvent.saved'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Entry? entry) initialized,
    required TResult Function(EntryFormPages pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String category) categoryAdded,
    required TResult Function(String category, String element) elementAdded,
    required TResult Function(String category) categoryRemoved,
    required TResult Function(String oldCategory, String newCategory)
        categoryChanged,
    required TResult Function(String category, String element) elementRemoved,
    required TResult Function(
            String category, String oldElement, String newElement)
        elementChanged,
    required TResult Function(String category, String element, int unitIndex)
        unitChanged,
    required TResult Function(String category, String element, double value)
        valueChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Entry? entry)? initialized,
    TResult? Function(EntryFormPages pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String category)? categoryAdded,
    TResult? Function(String category, String element)? elementAdded,
    TResult? Function(String category)? categoryRemoved,
    TResult? Function(String oldCategory, String newCategory)? categoryChanged,
    TResult? Function(String category, String element)? elementRemoved,
    TResult? Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult? Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult? Function(String category, String element, double value)?
        valueChanged,
    TResult? Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Entry? entry)? initialized,
    TResult Function(EntryFormPages pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String category)? categoryAdded,
    TResult Function(String category, String element)? elementAdded,
    TResult Function(String category)? categoryRemoved,
    TResult Function(String oldCategory, String newCategory)? categoryChanged,
    TResult Function(String category, String element)? elementRemoved,
    TResult Function(String category, String oldElement, String newElement)?
        elementChanged,
    TResult Function(String category, String element, int unitIndex)?
        unitChanged,
    TResult Function(String category, String element, double value)?
        valueChanged,
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
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_CategoryAdded value) categoryAdded,
    required TResult Function(_ElementAdded value) elementAdded,
    required TResult Function(_CategoryRemoved value) categoryRemoved,
    required TResult Function(_CategoryChanged value) categoryChanged,
    required TResult Function(_ElementRemoved value) elementRemoved,
    required TResult Function(_ElementChanged value) elementChanged,
    required TResult Function(_UnitChanged value) unitChanged,
    required TResult Function(_ValueChanged value) valueChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initialized value)? initialized,
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
    TResult? Function(_CategoryAdded value)? categoryAdded,
    TResult? Function(_ElementAdded value)? elementAdded,
    TResult? Function(_CategoryRemoved value)? categoryRemoved,
    TResult? Function(_CategoryChanged value)? categoryChanged,
    TResult? Function(_ElementRemoved value)? elementRemoved,
    TResult? Function(_ElementChanged value)? elementChanged,
    TResult? Function(_UnitChanged value)? unitChanged,
    TResult? Function(_ValueChanged value)? valueChanged,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_CategoryAdded value)? categoryAdded,
    TResult Function(_ElementAdded value)? elementAdded,
    TResult Function(_CategoryRemoved value)? categoryRemoved,
    TResult Function(_CategoryChanged value)? categoryChanged,
    TResult Function(_ElementRemoved value)? elementRemoved,
    TResult Function(_ElementChanged value)? elementChanged,
    TResult Function(_UnitChanged value)? unitChanged,
    TResult Function(_ValueChanged value)? valueChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements EntryFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
mixin _$EntryFormState {
  EntryFormPages get pageIndex => throw _privateConstructorUsedError;
  Entry get entry => throw _privateConstructorUsedError;
  Option<Either<EntryFailure, Unit>> get entryFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get editMode => throw _privateConstructorUsedError;
  bool get ready => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EntryFormStateCopyWith<EntryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EntryFormStateCopyWith<$Res> {
  factory $EntryFormStateCopyWith(
          EntryFormState value, $Res Function(EntryFormState) then) =
      _$EntryFormStateCopyWithImpl<$Res, EntryFormState>;
  @useResult
  $Res call(
      {EntryFormPages pageIndex,
      Entry entry,
      Option<Either<EntryFailure, Unit>> entryFailureOrSuccessOption,
      bool isSaving,
      bool editMode,
      bool ready});

  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class _$EntryFormStateCopyWithImpl<$Res, $Val extends EntryFormState>
    implements $EntryFormStateCopyWith<$Res> {
  _$EntryFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? entry = null,
    Object? entryFailureOrSuccessOption = null,
    Object? isSaving = null,
    Object? editMode = null,
    Object? ready = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as EntryFormPages,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry,
      entryFailureOrSuccessOption: null == entryFailureOrSuccessOption
          ? _value.entryFailureOrSuccessOption
          : entryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<EntryFailure, Unit>>,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      editMode: null == editMode
          ? _value.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as bool,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $EntryCopyWith<$Res> get entry {
    return $EntryCopyWith<$Res>(_value.entry, (value) {
      return _then(_value.copyWith(entry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EntryFormStateCopyWith<$Res>
    implements $EntryFormStateCopyWith<$Res> {
  factory _$$_EntryFormStateCopyWith(
          _$_EntryFormState value, $Res Function(_$_EntryFormState) then) =
      __$$_EntryFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EntryFormPages pageIndex,
      Entry entry,
      Option<Either<EntryFailure, Unit>> entryFailureOrSuccessOption,
      bool isSaving,
      bool editMode,
      bool ready});

  @override
  $EntryCopyWith<$Res> get entry;
}

/// @nodoc
class __$$_EntryFormStateCopyWithImpl<$Res>
    extends _$EntryFormStateCopyWithImpl<$Res, _$_EntryFormState>
    implements _$$_EntryFormStateCopyWith<$Res> {
  __$$_EntryFormStateCopyWithImpl(
      _$_EntryFormState _value, $Res Function(_$_EntryFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? entry = null,
    Object? entryFailureOrSuccessOption = null,
    Object? isSaving = null,
    Object? editMode = null,
    Object? ready = null,
  }) {
    return _then(_$_EntryFormState(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as EntryFormPages,
      entry: null == entry
          ? _value.entry
          : entry // ignore: cast_nullable_to_non_nullable
              as Entry,
      entryFailureOrSuccessOption: null == entryFailureOrSuccessOption
          ? _value.entryFailureOrSuccessOption
          : entryFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<EntryFailure, Unit>>,
      isSaving: null == isSaving
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      editMode: null == editMode
          ? _value.editMode
          : editMode // ignore: cast_nullable_to_non_nullable
              as bool,
      ready: null == ready
          ? _value.ready
          : ready // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_EntryFormState
    with DiagnosticableTreeMixin
    implements _EntryFormState {
  const _$_EntryFormState(
      {required this.pageIndex,
      required this.entry,
      required this.entryFailureOrSuccessOption,
      required this.isSaving,
      required this.editMode,
      required this.ready});

  @override
  final EntryFormPages pageIndex;
  @override
  final Entry entry;
  @override
  final Option<Either<EntryFailure, Unit>> entryFailureOrSuccessOption;
  @override
  final bool isSaving;
  @override
  final bool editMode;
  @override
  final bool ready;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'EntryFormState(pageIndex: $pageIndex, entry: $entry, entryFailureOrSuccessOption: $entryFailureOrSuccessOption, isSaving: $isSaving, editMode: $editMode, ready: $ready)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'EntryFormState'))
      ..add(DiagnosticsProperty('pageIndex', pageIndex))
      ..add(DiagnosticsProperty('entry', entry))
      ..add(DiagnosticsProperty(
          'entryFailureOrSuccessOption', entryFailureOrSuccessOption))
      ..add(DiagnosticsProperty('isSaving', isSaving))
      ..add(DiagnosticsProperty('editMode', editMode))
      ..add(DiagnosticsProperty('ready', ready));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EntryFormState &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.entry, entry) || other.entry == entry) &&
            (identical(other.entryFailureOrSuccessOption,
                    entryFailureOrSuccessOption) ||
                other.entryFailureOrSuccessOption ==
                    entryFailureOrSuccessOption) &&
            (identical(other.isSaving, isSaving) ||
                other.isSaving == isSaving) &&
            (identical(other.editMode, editMode) ||
                other.editMode == editMode) &&
            (identical(other.ready, ready) || other.ready == ready));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex, entry,
      entryFailureOrSuccessOption, isSaving, editMode, ready);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EntryFormStateCopyWith<_$_EntryFormState> get copyWith =>
      __$$_EntryFormStateCopyWithImpl<_$_EntryFormState>(this, _$identity);
}

abstract class _EntryFormState implements EntryFormState {
  const factory _EntryFormState(
      {required final EntryFormPages pageIndex,
      required final Entry entry,
      required final Option<Either<EntryFailure, Unit>>
          entryFailureOrSuccessOption,
      required final bool isSaving,
      required final bool editMode,
      required final bool ready}) = _$_EntryFormState;

  @override
  EntryFormPages get pageIndex;
  @override
  Entry get entry;
  @override
  Option<Either<EntryFailure, Unit>> get entryFailureOrSuccessOption;
  @override
  bool get isSaving;
  @override
  bool get editMode;
  @override
  bool get ready;
  @override
  @JsonKey(ignore: true)
  _$$_EntryFormStateCopyWith<_$_EntryFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
