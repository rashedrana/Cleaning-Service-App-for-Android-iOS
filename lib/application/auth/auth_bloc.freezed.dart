// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

  SignupEvent signUp(String email, String password, UserData userData) {
    return SignupEvent(
      email,
      password,
      userData,
    );
  }

  LoginEvent login(String login, String password) {
    return LoginEvent(
      login,
      password,
    );
  }

  UpdateUserData updateUserData(UserData userData) {
    return UpdateUserData(
      userData,
    );
  }

  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

  UserPList getUserList() {
    return const UserPList();
  }

  SignedOut signedOut() {
    return const SignedOut();
  }

  ResetPassword resetPassword(String email) {
    return ResetPassword(
      email,
    );
  }

  ResetState resetState() {
    return const ResetState();
  }
}

/// @nodoc
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;
  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $SignupEventCopyWith<$Res> {
  factory $SignupEventCopyWith(
          SignupEvent value, $Res Function(SignupEvent) then) =
      _$SignupEventCopyWithImpl<$Res>;
  $Res call({String email, String password, UserData userData});
}

/// @nodoc
class _$SignupEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignupEventCopyWith<$Res> {
  _$SignupEventCopyWithImpl(
      SignupEvent _value, $Res Function(SignupEvent) _then)
      : super(_value, (v) => _then(v as SignupEvent));

  @override
  SignupEvent get _value => super._value as SignupEvent;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? userData = freezed,
  }) {
    return _then(SignupEvent(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$SignupEvent implements SignupEvent {
  const _$SignupEvent(this.email, this.password, this.userData);

  @override
  final String email;
  @override
  final String password;
  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthEvent.signUp(email: $email, password: $password, userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is SignupEvent &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(email) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(userData);

  @JsonKey(ignore: true)
  @override
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      _$SignupEventCopyWithImpl<SignupEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return signUp(email, password, userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(email, password, userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return signUp(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (signUp != null) {
      return signUp(this);
    }
    return orElse();
  }
}

abstract class SignupEvent implements AuthEvent {
  const factory SignupEvent(String email, String password, UserData userData) =
      _$SignupEvent;

  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  UserData get userData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignupEventCopyWith<SignupEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
          LoginEvent value, $Res Function(LoginEvent) then) =
      _$LoginEventCopyWithImpl<$Res>;
  $Res call({String login, String password});
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(LoginEvent _value, $Res Function(LoginEvent) _then)
      : super(_value, (v) => _then(v as LoginEvent));

  @override
  LoginEvent get _value => super._value as LoginEvent;

  @override
  $Res call({
    Object? login = freezed,
    Object? password = freezed,
  }) {
    return _then(LoginEvent(
      login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
      password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEvent implements LoginEvent {
  const _$LoginEvent(this.login, this.password);

  @override
  final String login;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(login: $login, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoginEvent &&
            (identical(other.login, login) ||
                const DeepCollectionEquality().equals(other.login, login)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(login) ^
      const DeepCollectionEquality().hash(password);

  @JsonKey(ignore: true)
  @override
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      _$LoginEventCopyWithImpl<LoginEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return login(this.login, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this.login, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent(String login, String password) = _$LoginEvent;

  String get login => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserDataCopyWith<$Res> {
  factory $UpdateUserDataCopyWith(
          UpdateUserData value, $Res Function(UpdateUserData) then) =
      _$UpdateUserDataCopyWithImpl<$Res>;
  $Res call({UserData userData});
}

/// @nodoc
class _$UpdateUserDataCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UpdateUserDataCopyWith<$Res> {
  _$UpdateUserDataCopyWithImpl(
      UpdateUserData _value, $Res Function(UpdateUserData) _then)
      : super(_value, (v) => _then(v as UpdateUserData));

  @override
  UpdateUserData get _value => super._value as UpdateUserData;

  @override
  $Res call({
    Object? userData = freezed,
  }) {
    return _then(UpdateUserData(
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc

class _$UpdateUserData implements UpdateUserData {
  const _$UpdateUserData(this.userData);

  @override
  final UserData userData;

  @override
  String toString() {
    return 'AuthEvent.updateUserData(userData: $userData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UpdateUserData &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userData);

  @JsonKey(ignore: true)
  @override
  $UpdateUserDataCopyWith<UpdateUserData> get copyWith =>
      _$UpdateUserDataCopyWithImpl<UpdateUserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return updateUserData(userData);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(userData);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return updateUserData(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (updateUserData != null) {
      return updateUserData(this);
    }
    return orElse();
  }
}

abstract class UpdateUserData implements AuthEvent {
  const factory UpdateUserData(UserData userData) = _$UpdateUserData;

  UserData get userData => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserDataCopyWith<UpdateUserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc

class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $UserPListCopyWith<$Res> {
  factory $UserPListCopyWith(UserPList value, $Res Function(UserPList) then) =
      _$UserPListCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserPListCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $UserPListCopyWith<$Res> {
  _$UserPListCopyWithImpl(UserPList _value, $Res Function(UserPList) _then)
      : super(_value, (v) => _then(v as UserPList));

  @override
  UserPList get _value => super._value as UserPList;
}

/// @nodoc

class _$UserPList implements UserPList {
  const _$UserPList();

  @override
  String toString() {
    return 'AuthEvent.getUserList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UserPList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return getUserList();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return getUserList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (getUserList != null) {
      return getUserList(this);
    }
    return orElse();
  }
}

abstract class UserPList implements AuthEvent {
  const factory UserPList() = _$UserPList;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc

class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return signedOut();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class $ResetPasswordCopyWith<$Res> {
  factory $ResetPasswordCopyWith(
          ResetPassword value, $Res Function(ResetPassword) then) =
      _$ResetPasswordCopyWithImpl<$Res>;
  $Res call({String email});
}

/// @nodoc
class _$ResetPasswordCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $ResetPasswordCopyWith<$Res> {
  _$ResetPasswordCopyWithImpl(
      ResetPassword _value, $Res Function(ResetPassword) _then)
      : super(_value, (v) => _then(v as ResetPassword));

  @override
  ResetPassword get _value => super._value as ResetPassword;

  @override
  $Res call({
    Object? email = freezed,
  }) {
    return _then(ResetPassword(
      email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPassword implements ResetPassword {
  const _$ResetPassword(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ResetPassword &&
            (identical(other.email, email) ||
                const DeepCollectionEquality().equals(other.email, email)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(email);

  @JsonKey(ignore: true)
  @override
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      _$ResetPasswordCopyWithImpl<ResetPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPassword implements AuthEvent {
  const factory ResetPassword(String email) = _$ResetPassword;

  String get email => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResetPasswordCopyWith<ResetPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResetStateCopyWith<$Res> {
  factory $ResetStateCopyWith(
          ResetState value, $Res Function(ResetState) then) =
      _$ResetStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ResetStateCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $ResetStateCopyWith<$Res> {
  _$ResetStateCopyWithImpl(ResetState _value, $Res Function(ResetState) _then)
      : super(_value, (v) => _then(v as ResetState));

  @override
  ResetState get _value => super._value as ResetState;
}

/// @nodoc

class _$ResetState implements ResetState {
  const _$ResetState();

  @override
  String toString() {
    return 'AuthEvent.resetState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ResetState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password, UserData userData)
        signUp,
    required TResult Function(String login, String password) login,
    required TResult Function(UserData userData) updateUserData,
    required TResult Function() authCheckRequested,
    required TResult Function() getUserList,
    required TResult Function() signedOut,
    required TResult Function(String email) resetPassword,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password, UserData userData)? signUp,
    TResult Function(String login, String password)? login,
    TResult Function(UserData userData)? updateUserData,
    TResult Function()? authCheckRequested,
    TResult Function()? getUserList,
    TResult Function()? signedOut,
    TResult Function(String email)? resetPassword,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SignupEvent value) signUp,
    required TResult Function(LoginEvent value) login,
    required TResult Function(UpdateUserData value) updateUserData,
    required TResult Function(AuthCheckRequested value) authCheckRequested,
    required TResult Function(UserPList value) getUserList,
    required TResult Function(SignedOut value) signedOut,
    required TResult Function(ResetPassword value) resetPassword,
    required TResult Function(ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SignupEvent value)? signUp,
    TResult Function(LoginEvent value)? login,
    TResult Function(UpdateUserData value)? updateUserData,
    TResult Function(AuthCheckRequested value)? authCheckRequested,
    TResult Function(UserPList value)? getUserList,
    TResult Function(SignedOut value)? signedOut,
    TResult Function(ResetPassword value)? resetPassword,
    TResult Function(ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class ResetState implements AuthEvent {
  const factory ResetState() = _$ResetState;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  _AuthState call(
      String error,
      bool isAuthenticated,
      bool isLoading,
      bool resetLink,
      UserData userData,
      List<UserData> userDataList,
      double lat,
      double long) {
    return _AuthState(
      error,
      isAuthenticated,
      isLoading,
      resetLink,
      userData,
      userDataList,
      lat,
      long,
    );
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  String get error => throw _privateConstructorUsedError;
  bool get isAuthenticated => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get resetLink => throw _privateConstructorUsedError;
  UserData get userData => throw _privateConstructorUsedError;
  List<UserData> get userDataList => throw _privateConstructorUsedError;
  double get lat => throw _privateConstructorUsedError;
  double get long => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
  $Res call(
      {String error,
      bool isAuthenticated,
      bool isLoading,
      bool resetLink,
      UserData userData,
      List<UserData> userDataList,
      double lat,
      double long});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;

  @override
  $Res call({
    Object? error = freezed,
    Object? isAuthenticated = freezed,
    Object? isLoading = freezed,
    Object? resetLink = freezed,
    Object? userData = freezed,
    Object? userDataList = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_value.copyWith(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthenticated: isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resetLink: resetLink == freezed
          ? _value.resetLink
          : resetLink // ignore: cast_nullable_to_non_nullable
              as bool,
      userData: userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      userDataList: userDataList == freezed
          ? _value.userDataList
          : userDataList // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
      lat: lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long: long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(
          _AuthState value, $Res Function(_AuthState) then) =
      __$AuthStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String error,
      bool isAuthenticated,
      bool isLoading,
      bool resetLink,
      UserData userData,
      List<UserData> userDataList,
      double lat,
      double long});
}

/// @nodoc
class __$AuthStateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(_AuthState _value, $Res Function(_AuthState) _then)
      : super(_value, (v) => _then(v as _AuthState));

  @override
  _AuthState get _value => super._value as _AuthState;

  @override
  $Res call({
    Object? error = freezed,
    Object? isAuthenticated = freezed,
    Object? isLoading = freezed,
    Object? resetLink = freezed,
    Object? userData = freezed,
    Object? userDataList = freezed,
    Object? lat = freezed,
    Object? long = freezed,
  }) {
    return _then(_AuthState(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
      isAuthenticated == freezed
          ? _value.isAuthenticated
          : isAuthenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      resetLink == freezed
          ? _value.resetLink
          : resetLink // ignore: cast_nullable_to_non_nullable
              as bool,
      userData == freezed
          ? _value.userData
          : userData // ignore: cast_nullable_to_non_nullable
              as UserData,
      userDataList == freezed
          ? _value.userDataList
          : userDataList // ignore: cast_nullable_to_non_nullable
              as List<UserData>,
      lat == freezed
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as double,
      long == freezed
          ? _value.long
          : long // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(this.error, this.isAuthenticated, this.isLoading,
      this.resetLink, this.userData, this.userDataList, this.lat, this.long);

  @override
  final String error;
  @override
  final bool isAuthenticated;
  @override
  final bool isLoading;
  @override
  final bool resetLink;
  @override
  final UserData userData;
  @override
  final List<UserData> userDataList;
  @override
  final double lat;
  @override
  final double long;

  @override
  String toString() {
    return 'AuthState(error: $error, isAuthenticated: $isAuthenticated, isLoading: $isLoading, resetLink: $resetLink, userData: $userData, userDataList: $userDataList, lat: $lat, long: $long)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AuthState &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)) &&
            (identical(other.isAuthenticated, isAuthenticated) ||
                const DeepCollectionEquality()
                    .equals(other.isAuthenticated, isAuthenticated)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.resetLink, resetLink) ||
                const DeepCollectionEquality()
                    .equals(other.resetLink, resetLink)) &&
            (identical(other.userData, userData) ||
                const DeepCollectionEquality()
                    .equals(other.userData, userData)) &&
            (identical(other.userDataList, userDataList) ||
                const DeepCollectionEquality()
                    .equals(other.userDataList, userDataList)) &&
            (identical(other.lat, lat) ||
                const DeepCollectionEquality().equals(other.lat, lat)) &&
            (identical(other.long, long) ||
                const DeepCollectionEquality().equals(other.long, long)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(error) ^
      const DeepCollectionEquality().hash(isAuthenticated) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(resetLink) ^
      const DeepCollectionEquality().hash(userData) ^
      const DeepCollectionEquality().hash(userDataList) ^
      const DeepCollectionEquality().hash(lat) ^
      const DeepCollectionEquality().hash(long);

  @JsonKey(ignore: true)
  @override
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      String error,
      bool isAuthenticated,
      bool isLoading,
      bool resetLink,
      UserData userData,
      List<UserData> userDataList,
      double lat,
      double long) = _$_AuthState;

  @override
  String get error => throw _privateConstructorUsedError;
  @override
  bool get isAuthenticated => throw _privateConstructorUsedError;
  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  bool get resetLink => throw _privateConstructorUsedError;
  @override
  UserData get userData => throw _privateConstructorUsedError;
  @override
  List<UserData> get userDataList => throw _privateConstructorUsedError;
  @override
  double get lat => throw _privateConstructorUsedError;
  @override
  double get long => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AuthStateCopyWith<_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}
