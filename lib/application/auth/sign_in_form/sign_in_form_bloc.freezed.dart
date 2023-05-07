// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormEventCopyWith<$Res> {
  factory $SignInFormEventCopyWith(
          SignInFormEvent value, $Res Function(SignInFormEvent) then) =
      _$SignInFormEventCopyWithImpl<$Res, SignInFormEvent>;
}

/// @nodoc
class _$SignInFormEventCopyWithImpl<$Res, $Val extends SignInFormEvent>
    implements $SignInFormEventCopyWith<$Res> {
  _$SignInFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$EmailChangedCopyWith<$Res> {
  factory _$$EmailChangedCopyWith(
          _$EmailChanged value, $Res Function(_$EmailChanged) then) =
      __$$EmailChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$EmailChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailChanged>
    implements _$$EmailChangedCopyWith<$Res> {
  __$$EmailChangedCopyWithImpl(
      _$EmailChanged _value, $Res Function(_$EmailChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$EmailChanged(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmailChanged implements EmailChanged {
  const _$EmailChanged({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'SignInFormEvent.emailChanged(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EmailChanged &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      __$$EmailChangedCopyWithImpl<_$EmailChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return emailChanged(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return emailChanged?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmailChanged implements SignInFormEvent {
  const factory EmailChanged({required final String email}) = _$EmailChanged;

  String get email;
  @JsonKey(ignore: true)
  _$$EmailChangedCopyWith<_$EmailChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PasswordChangedCopyWith<$Res> {
  factory _$$PasswordChangedCopyWith(
          _$PasswordChanged value, $Res Function(_$PasswordChanged) then) =
      __$$PasswordChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$PasswordChangedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$PasswordChanged>
    implements _$$PasswordChangedCopyWith<$Res> {
  __$$PasswordChangedCopyWithImpl(
      _$PasswordChanged _value, $Res Function(_$PasswordChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$PasswordChanged(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged({required this.password});

  @override
  final String password;

  @override
  String toString() {
    return 'SignInFormEvent.passwordChanged(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasswordChanged &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      __$$PasswordChangedCopyWithImpl<_$PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return passwordChanged(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return passwordChanged?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SignInFormEvent {
  const factory PasswordChanged({required final String password}) =
      _$PasswordChanged;

  String get password;
  @JsonKey(ignore: true)
  _$$PasswordChangedCopyWith<_$PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SignInWithGooglePressedCopyWith<$Res> {
  factory _$$SignInWithGooglePressedCopyWith(_$SignInWithGooglePressed value,
          $Res Function(_$SignInWithGooglePressed) then) =
      __$$SignInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithGooglePressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SignInWithGooglePressed>
    implements _$$SignInWithGooglePressedCopyWith<$Res> {
  __$$SignInWithGooglePressedCopyWithImpl(_$SignInWithGooglePressed _value,
      $Res Function(_$SignInWithGooglePressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithGooglePressed implements SignInWithGooglePressed {
  const _$SignInWithGooglePressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return signInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return signInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return signInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return signInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (signInWithGooglePressed != null) {
      return signInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithGooglePressed implements SignInFormEvent {
  const factory SignInWithGooglePressed() = _$SignInWithGooglePressed;
}

/// @nodoc
abstract class _$$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$RegisterWithEmailAndPasswordPressedCopyWith(
          _$RegisterWithEmailAndPasswordPressed value,
          $Res Function(_$RegisterWithEmailAndPasswordPressed) then) =
      __$$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$RegisterWithEmailAndPasswordPressed>
    implements _$$RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      _$RegisterWithEmailAndPasswordPressed _value,
      $Res Function(_$RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory _$$SignInWithEmailAndPasswordPressedCopyWith(
          _$SignInWithEmailAndPasswordPressed value,
          $Res Function(_$SignInWithEmailAndPasswordPressed) then) =
      __$$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SignInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res,
        _$SignInWithEmailAndPasswordPressed>
    implements _$$SignInWithEmailAndPasswordPressedCopyWith<$Res> {
  __$$SignInWithEmailAndPasswordPressedCopyWithImpl(
      _$SignInWithEmailAndPasswordPressed _value,
      $Res Function(_$SignInWithEmailAndPasswordPressed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SignInWithEmailAndPasswordPressed
    implements SignInWithEmailAndPasswordPressed {
  const _$SignInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SignInFormEvent.signInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return signInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return signInWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return signInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return signInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (signInWithEmailAndPasswordPressed != null) {
      return signInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailAndPasswordPressed implements SignInFormEvent {
  const factory SignInWithEmailAndPasswordPressed() =
      _$SignInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class _$$SendPasswordResetEmailCopyWith<$Res> {
  factory _$$SendPasswordResetEmailCopyWith(_$SendPasswordResetEmail value,
          $Res Function(_$SendPasswordResetEmail) then) =
      __$$SendPasswordResetEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendPasswordResetEmailCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SendPasswordResetEmail>
    implements _$$SendPasswordResetEmailCopyWith<$Res> {
  __$$SendPasswordResetEmailCopyWithImpl(_$SendPasswordResetEmail _value,
      $Res Function(_$SendPasswordResetEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendPasswordResetEmail implements SendPasswordResetEmail {
  const _$SendPasswordResetEmail();

  @override
  String toString() {
    return 'SignInFormEvent.sendPasswordResetEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendPasswordResetEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return sendPasswordResetEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return sendPasswordResetEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return sendPasswordResetEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return sendPasswordResetEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (sendPasswordResetEmail != null) {
      return sendPasswordResetEmail(this);
    }
    return orElse();
  }
}

abstract class SendPasswordResetEmail implements SignInFormEvent {
  const factory SendPasswordResetEmail() = _$SendPasswordResetEmail;
}

/// @nodoc
abstract class _$$SendVerificationEmailCopyWith<$Res> {
  factory _$$SendVerificationEmailCopyWith(_$SendVerificationEmail value,
          $Res Function(_$SendVerificationEmail) then) =
      __$$SendVerificationEmailCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SendVerificationEmailCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$SendVerificationEmail>
    implements _$$SendVerificationEmailCopyWith<$Res> {
  __$$SendVerificationEmailCopyWithImpl(_$SendVerificationEmail _value,
      $Res Function(_$SendVerificationEmail) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SendVerificationEmail implements SendVerificationEmail {
  const _$SendVerificationEmail();

  @override
  String toString() {
    return 'SignInFormEvent.sendVerificationEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SendVerificationEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return sendVerificationEmail();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return sendVerificationEmail?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (sendVerificationEmail != null) {
      return sendVerificationEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return sendVerificationEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return sendVerificationEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (sendVerificationEmail != null) {
      return sendVerificationEmail(this);
    }
    return orElse();
  }
}

abstract class SendVerificationEmail implements SignInFormEvent {
  const factory SendVerificationEmail() = _$SendVerificationEmail;
}

/// @nodoc
abstract class _$$CheckVerificationStatusCopyWith<$Res> {
  factory _$$CheckVerificationStatusCopyWith(_$CheckVerificationStatus value,
          $Res Function(_$CheckVerificationStatus) then) =
      __$$CheckVerificationStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckVerificationStatusCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$CheckVerificationStatus>
    implements _$$CheckVerificationStatusCopyWith<$Res> {
  __$$CheckVerificationStatusCopyWithImpl(_$CheckVerificationStatus _value,
      $Res Function(_$CheckVerificationStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckVerificationStatus implements CheckVerificationStatus {
  const _$CheckVerificationStatus();

  @override
  String toString() {
    return 'SignInFormEvent.checkVerificationStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckVerificationStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return checkVerificationStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return checkVerificationStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (checkVerificationStatus != null) {
      return checkVerificationStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return checkVerificationStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return checkVerificationStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (checkVerificationStatus != null) {
      return checkVerificationStatus(this);
    }
    return orElse();
  }
}

abstract class CheckVerificationStatus implements SignInFormEvent {
  const factory CheckVerificationStatus() = _$CheckVerificationStatus;
}

/// @nodoc
abstract class _$$EmailVerifiedCopyWith<$Res> {
  factory _$$EmailVerifiedCopyWith(
          _$EmailVerified value, $Res Function(_$EmailVerified) then) =
      __$$EmailVerifiedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EmailVerifiedCopyWithImpl<$Res>
    extends _$SignInFormEventCopyWithImpl<$Res, _$EmailVerified>
    implements _$$EmailVerifiedCopyWith<$Res> {
  __$$EmailVerifiedCopyWithImpl(
      _$EmailVerified _value, $Res Function(_$EmailVerified) _then)
      : super(_value, _then);
}

/// @nodoc

class _$EmailVerified implements EmailVerified {
  const _$EmailVerified();

  @override
  String toString() {
    return 'SignInFormEvent.emailVerified()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmailVerified);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) emailChanged,
    required TResult Function(String password) passwordChanged,
    required TResult Function() signInWithGooglePressed,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() signInWithEmailAndPasswordPressed,
    required TResult Function() sendPasswordResetEmail,
    required TResult Function() sendVerificationEmail,
    required TResult Function() checkVerificationStatus,
    required TResult Function() emailVerified,
  }) {
    return emailVerified();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? emailChanged,
    TResult? Function(String password)? passwordChanged,
    TResult? Function()? signInWithGooglePressed,
    TResult? Function()? registerWithEmailAndPasswordPressed,
    TResult? Function()? signInWithEmailAndPasswordPressed,
    TResult? Function()? sendPasswordResetEmail,
    TResult? Function()? sendVerificationEmail,
    TResult? Function()? checkVerificationStatus,
    TResult? Function()? emailVerified,
  }) {
    return emailVerified?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? emailChanged,
    TResult Function(String password)? passwordChanged,
    TResult Function()? signInWithGooglePressed,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? signInWithEmailAndPasswordPressed,
    TResult Function()? sendPasswordResetEmail,
    TResult Function()? sendVerificationEmail,
    TResult Function()? checkVerificationStatus,
    TResult Function()? emailVerified,
    required TResult orElse(),
  }) {
    if (emailVerified != null) {
      return emailVerified();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmailChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(SignInWithGooglePressed value)
        signInWithGooglePressed,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SignInWithEmailAndPasswordPressed value)
        signInWithEmailAndPasswordPressed,
    required TResult Function(SendPasswordResetEmail value)
        sendPasswordResetEmail,
    required TResult Function(SendVerificationEmail value)
        sendVerificationEmail,
    required TResult Function(CheckVerificationStatus value)
        checkVerificationStatus,
    required TResult Function(EmailVerified value) emailVerified,
  }) {
    return emailVerified(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EmailChanged value)? emailChanged,
    TResult? Function(PasswordChanged value)? passwordChanged,
    TResult? Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult? Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult? Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult? Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult? Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult? Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult? Function(EmailVerified value)? emailVerified,
  }) {
    return emailVerified?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmailChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(SignInWithGooglePressed value)? signInWithGooglePressed,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SignInWithEmailAndPasswordPressed value)?
        signInWithEmailAndPasswordPressed,
    TResult Function(SendPasswordResetEmail value)? sendPasswordResetEmail,
    TResult Function(SendVerificationEmail value)? sendVerificationEmail,
    TResult Function(CheckVerificationStatus value)? checkVerificationStatus,
    TResult Function(EmailVerified value)? emailVerified,
    required TResult orElse(),
  }) {
    if (emailVerified != null) {
      return emailVerified(this);
    }
    return orElse();
  }
}

abstract class EmailVerified implements SignInFormEvent {
  const factory EmailVerified() = _$EmailVerified;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  AutovalidateMode? get showErrorMessages => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  bool? get isEmailVerified => throw _privateConstructorUsedError;
  int get verificationEmailAttempts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res, SignInFormState>;
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      AutovalidateMode? showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool? isEmailVerified,
      int verificationEmailAttempts});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res, $Val extends SignInFormState>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = null,
    Object? isEmailVerified = freezed,
    Object? verificationEmailAttempts = null,
  }) {
    return _then(_value.copyWith(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationEmailAttempts: null == verificationEmailAttempts
          ? _value.verificationEmailAttempts
          : verificationEmailAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$$_SignInFormStateCopyWith(
          _$_SignInFormState value, $Res Function(_$_SignInFormState) then) =
      __$$_SignInFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool isSubmitting,
      AutovalidateMode? showErrorMessages,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
      bool? isEmailVerified,
      int verificationEmailAttempts});
}

/// @nodoc
class __$$_SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res, _$_SignInFormState>
    implements _$$_SignInFormStateCopyWith<$Res> {
  __$$_SignInFormStateCopyWithImpl(
      _$_SignInFormState _value, $Res Function(_$_SignInFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? emailAddress = null,
    Object? password = null,
    Object? isSubmitting = null,
    Object? showErrorMessages = freezed,
    Object? authFailureOrSuccessOption = null,
    Object? isEmailVerified = freezed,
    Object? verificationEmailAttempts = null,
  }) {
    return _then(_$_SignInFormState(
      emailAddress: null == emailAddress
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      showErrorMessages: freezed == showErrorMessages
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as AutovalidateMode?,
      authFailureOrSuccessOption: null == authFailureOrSuccessOption
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
      isEmailVerified: freezed == isEmailVerified
          ? _value.isEmailVerified
          : isEmailVerified // ignore: cast_nullable_to_non_nullable
              as bool?,
      verificationEmailAttempts: null == verificationEmailAttempts
          ? _value.verificationEmailAttempts
          : verificationEmailAttempts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_SignInFormState extends _SignInFormState {
  _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.isSubmitting,
      required this.showErrorMessages,
      required this.authFailureOrSuccessOption,
      this.isEmailVerified,
      required this.verificationEmailAttempts})
      : super._();

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool isSubmitting;
  @override
  final AutovalidateMode? showErrorMessages;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;
  @override
  final bool? isEmailVerified;
  @override
  final int verificationEmailAttempts;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, isSubmitting: $isSubmitting, showErrorMessages: $showErrorMessages, authFailureOrSuccessOption: $authFailureOrSuccessOption, isEmailVerified: $isEmailVerified, verificationEmailAttempts: $verificationEmailAttempts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInFormState &&
            (identical(other.emailAddress, emailAddress) ||
                other.emailAddress == emailAddress) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                other.showErrorMessages == showErrorMessages) &&
            (identical(other.authFailureOrSuccessOption,
                    authFailureOrSuccessOption) ||
                other.authFailureOrSuccessOption ==
                    authFailureOrSuccessOption) &&
            (identical(other.isEmailVerified, isEmailVerified) ||
                other.isEmailVerified == isEmailVerified) &&
            (identical(other.verificationEmailAttempts,
                    verificationEmailAttempts) ||
                other.verificationEmailAttempts == verificationEmailAttempts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      emailAddress,
      password,
      isSubmitting,
      showErrorMessages,
      authFailureOrSuccessOption,
      isEmailVerified,
      verificationEmailAttempts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      __$$_SignInFormStateCopyWithImpl<_$_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState extends SignInFormState {
  factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool isSubmitting,
      required final AutovalidateMode? showErrorMessages,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption,
      final bool? isEmailVerified,
      required final int verificationEmailAttempts}) = _$_SignInFormState;
  _SignInFormState._() : super._();

  @override
  EmailAddress get emailAddress;
  @override
  Password get password;
  @override
  bool get isSubmitting;
  @override
  AutovalidateMode? get showErrorMessages;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption;
  @override
  bool? get isEmailVerified;
  @override
  int get verificationEmailAttempts;
  @override
  @JsonKey(ignore: true)
  _$$_SignInFormStateCopyWith<_$_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
