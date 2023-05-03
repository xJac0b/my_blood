// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'new_entry_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewEntryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEntryEventCopyWith<$Res> {
  factory $NewEntryEventCopyWith(
          NewEntryEvent value, $Res Function(NewEntryEvent) then) =
      _$NewEntryEventCopyWithImpl<$Res, NewEntryEvent>;
}

/// @nodoc
class _$NewEntryEventCopyWithImpl<$Res, $Val extends NewEntryEvent>
    implements $NewEntryEventCopyWith<$Res> {
  _$NewEntryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_PageChangedCopyWith<$Res> {
  factory _$$_PageChangedCopyWith(
          _$_PageChanged value, $Res Function(_$_PageChanged) then) =
      __$$_PageChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$_PageChangedCopyWithImpl<$Res>
    extends _$NewEntryEventCopyWithImpl<$Res, _$_PageChanged>
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
              as int,
    ));
  }
}

/// @nodoc

class _$_PageChanged implements _PageChanged {
  const _$_PageChanged(this.pageIndex);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'NewEntryEvent.pageChanged(pageIndex: $pageIndex)';
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
    required TResult Function(int pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
  }) {
    return pageChanged(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
  }) {
    return pageChanged?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
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
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements NewEntryEvent {
  const factory _PageChanged(final int pageIndex) = _$_PageChanged;

  int get pageIndex;
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
    extends _$NewEntryEventCopyWithImpl<$Res, _$_DateChanged>
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

class _$_DateChanged implements _DateChanged {
  const _$_DateChanged(this.date);

  @override
  final DateTime date;

  @override
  String toString() {
    return 'NewEntryEvent.dateChanged(date: $date)';
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
    required TResult Function(int pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
  }) {
    return dateChanged(date);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
  }) {
    return dateChanged?.call(date);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
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
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
  }) {
    return dateChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
  }) {
    return dateChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    required TResult orElse(),
  }) {
    if (dateChanged != null) {
      return dateChanged(this);
    }
    return orElse();
  }
}

abstract class _DateChanged implements NewEntryEvent {
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
    extends _$NewEntryEventCopyWithImpl<$Res, _$_TitleChanged>
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

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'NewEntryEvent.titleChanged(title: $title)';
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
    required TResult Function(int pageIndex) pageChanged,
    required TResult Function(DateTime date) dateChanged,
    required TResult Function(String title) titleChanged,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? pageChanged,
    TResult? Function(DateTime date)? dateChanged,
    TResult? Function(String title)? titleChanged,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? pageChanged,
    TResult Function(DateTime date)? dateChanged,
    TResult Function(String title)? titleChanged,
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
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_DateChanged value) dateChanged,
    required TResult Function(_TitleChanged value) titleChanged,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_DateChanged value)? dateChanged,
    TResult? Function(_TitleChanged value)? titleChanged,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_DateChanged value)? dateChanged,
    TResult Function(_TitleChanged value)? titleChanged,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements NewEntryEvent {
  const factory _TitleChanged(final String title) = _$_TitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$_TitleChangedCopyWith<_$_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewEntryState {
  int get pageIndex => throw _privateConstructorUsedError;
  NewEntry get newEntry => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewEntryStateCopyWith<NewEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewEntryStateCopyWith<$Res> {
  factory $NewEntryStateCopyWith(
          NewEntryState value, $Res Function(NewEntryState) then) =
      _$NewEntryStateCopyWithImpl<$Res, NewEntryState>;
  @useResult
  $Res call({int pageIndex, NewEntry newEntry});

  $NewEntryCopyWith<$Res> get newEntry;
}

/// @nodoc
class _$NewEntryStateCopyWithImpl<$Res, $Val extends NewEntryState>
    implements $NewEntryStateCopyWith<$Res> {
  _$NewEntryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? newEntry = null,
  }) {
    return _then(_value.copyWith(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newEntry: null == newEntry
          ? _value.newEntry
          : newEntry // ignore: cast_nullable_to_non_nullable
              as NewEntry,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NewEntryCopyWith<$Res> get newEntry {
    return $NewEntryCopyWith<$Res>(_value.newEntry, (value) {
      return _then(_value.copyWith(newEntry: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NewEntryStateCopyWith<$Res>
    implements $NewEntryStateCopyWith<$Res> {
  factory _$$_NewEntryStateCopyWith(
          _$_NewEntryState value, $Res Function(_$_NewEntryState) then) =
      __$$_NewEntryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int pageIndex, NewEntry newEntry});

  @override
  $NewEntryCopyWith<$Res> get newEntry;
}

/// @nodoc
class __$$_NewEntryStateCopyWithImpl<$Res>
    extends _$NewEntryStateCopyWithImpl<$Res, _$_NewEntryState>
    implements _$$_NewEntryStateCopyWith<$Res> {
  __$$_NewEntryStateCopyWithImpl(
      _$_NewEntryState _value, $Res Function(_$_NewEntryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
    Object? newEntry = null,
  }) {
    return _then(_$_NewEntryState(
      pageIndex: null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
      newEntry: null == newEntry
          ? _value.newEntry
          : newEntry // ignore: cast_nullable_to_non_nullable
              as NewEntry,
    ));
  }
}

/// @nodoc

class _$_NewEntryState implements _NewEntryState {
  const _$_NewEntryState({required this.pageIndex, required this.newEntry});

  @override
  final int pageIndex;
  @override
  final NewEntry newEntry;

  @override
  String toString() {
    return 'NewEntryState(pageIndex: $pageIndex, newEntry: $newEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewEntryState &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex) &&
            (identical(other.newEntry, newEntry) ||
                other.newEntry == newEntry));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex, newEntry);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewEntryStateCopyWith<_$_NewEntryState> get copyWith =>
      __$$_NewEntryStateCopyWithImpl<_$_NewEntryState>(this, _$identity);
}

abstract class _NewEntryState implements NewEntryState {
  const factory _NewEntryState(
      {required final int pageIndex,
      required final NewEntry newEntry}) = _$_NewEntryState;

  @override
  int get pageIndex;
  @override
  NewEntry get newEntry;
  @override
  @JsonKey(ignore: true)
  _$$_NewEntryStateCopyWith<_$_NewEntryState> get copyWith =>
      throw _privateConstructorUsedError;
}
