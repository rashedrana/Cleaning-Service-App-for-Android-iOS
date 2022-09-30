// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfile _$UserProfileFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType'] as String) {
    case 'default':
      return UserProfileObj.fromJson(json);
    case 'data':
      return UserData.fromJson(json);
    case 'list':
      return UserList.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$UserProfileTearOff {
  const _$UserProfileTearOff();

  UserProfileObj call(UserData data) {
    return UserProfileObj(
      data,
    );
  }

  UserData data(
      String firstname,
      String lastname,
      String address,
      String phoneNumber,
      String nid,
      bool isCleaner,
      int dPrice,
      int wPrice,
      int mPrice) {
    return UserData(
      firstname,
      lastname,
      address,
      phoneNumber,
      nid,
      isCleaner,
      dPrice,
      wPrice,
      mPrice,
    );
  }

  UserList list({List<UserProfileObj>? users}) {
    return UserList(
      users: users,
    );
  }

  UserProfile fromJson(Map<String, Object> json) {
    return UserProfile.fromJson(json);
  }
}

/// @nodoc
const $UserProfile = _$UserProfileTearOff();

/// @nodoc
mixin _$UserProfile {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)
        data,
    required TResult Function(List<UserProfileObj>? users) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)?
        data,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserList value) list,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileCopyWith<$Res> {
  factory $UserProfileCopyWith(
          UserProfile value, $Res Function(UserProfile) then) =
      _$UserProfileCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserProfileCopyWithImpl<$Res> implements $UserProfileCopyWith<$Res> {
  _$UserProfileCopyWithImpl(this._value, this._then);

  final UserProfile _value;
  // ignore: unused_field
  final $Res Function(UserProfile) _then;
}

/// @nodoc
abstract class $UserProfileObjCopyWith<$Res> {
  factory $UserProfileObjCopyWith(
          UserProfileObj value, $Res Function(UserProfileObj) then) =
      _$UserProfileObjCopyWithImpl<$Res>;
  $Res call({UserData data});
}

/// @nodoc
class _$UserProfileObjCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserProfileObjCopyWith<$Res> {
  _$UserProfileObjCopyWithImpl(
      UserProfileObj _value, $Res Function(UserProfileObj) _then)
      : super(_value, (v) => _then(v as UserProfileObj));

  @override
  UserProfileObj get _value => super._value as UserProfileObj;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(UserProfileObj(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserProfileObj implements UserProfileObj {
  const _$UserProfileObj(this.data);

  factory _$UserProfileObj.fromJson(Map<String, dynamic> json) =>
      _$_$UserProfileObjFromJson(json);

  @override
  final UserData data;

  @override
  String toString() {
    return 'UserProfile(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserProfileObj &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $UserProfileObjCopyWith<UserProfileObj> get copyWith =>
      _$UserProfileObjCopyWithImpl<UserProfileObj>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)
        data,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return $default(this.data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)?
        data,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserList value) list,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserProfileObjToJson(this)..['runtimeType'] = 'default';
  }
}

abstract class UserProfileObj implements UserProfile {
  const factory UserProfileObj(UserData data) = _$UserProfileObj;

  factory UserProfileObj.fromJson(Map<String, dynamic> json) =
      _$UserProfileObj.fromJson;

  UserData get data => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileObjCopyWith<UserProfileObj> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String firstname,
      String lastname,
      String address,
      String phoneNumber,
      String nid,
      bool isCleaner,
      int dPrice,
      int wPrice,
      int mPrice});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(UserData _value, $Res Function(UserData) _then)
      : super(_value, (v) => _then(v as UserData));

  @override
  UserData get _value => super._value as UserData;

  @override
  $Res call({
    Object? firstname = freezed,
    Object? lastname = freezed,
    Object? address = freezed,
    Object? phoneNumber = freezed,
    Object? nid = freezed,
    Object? isCleaner = freezed,
    Object? dPrice = freezed,
    Object? wPrice = freezed,
    Object? mPrice = freezed,
  }) {
    return _then(UserData(
      firstname == freezed
          ? _value.firstname
          : firstname // ignore: cast_nullable_to_non_nullable
              as String,
      lastname == freezed
          ? _value.lastname
          : lastname // ignore: cast_nullable_to_non_nullable
              as String,
      address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      nid == freezed
          ? _value.nid
          : nid // ignore: cast_nullable_to_non_nullable
              as String,
      isCleaner == freezed
          ? _value.isCleaner
          : isCleaner // ignore: cast_nullable_to_non_nullable
              as bool,
      dPrice == freezed
          ? _value.dPrice
          : dPrice // ignore: cast_nullable_to_non_nullable
              as int,
      wPrice == freezed
          ? _value.wPrice
          : wPrice // ignore: cast_nullable_to_non_nullable
              as int,
      mPrice == freezed
          ? _value.mPrice
          : mPrice // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserData implements UserData {
  const _$UserData(
      this.firstname,
      this.lastname,
      this.address,
      this.phoneNumber,
      this.nid,
      this.isCleaner,
      this.dPrice,
      this.wPrice,
      this.mPrice);

  factory _$UserData.fromJson(Map<String, dynamic> json) =>
      _$_$UserDataFromJson(json);

  @override
  final String firstname;
  @override
  final String lastname;
  @override
  final String address;
  @override
  final String phoneNumber;
  @override
  final String nid;
  @override
  final bool isCleaner;
  @override
  final int dPrice;
  @override
  final int wPrice;
  @override
  final int mPrice;

  @override
  String toString() {
    return 'UserProfile.data(firstname: $firstname, lastname: $lastname, address: $address, phoneNumber: $phoneNumber, nid: $nid, isCleaner: $isCleaner, dPrice: $dPrice, wPrice: $wPrice, mPrice: $mPrice)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserData &&
            (identical(other.firstname, firstname) ||
                const DeepCollectionEquality()
                    .equals(other.firstname, firstname)) &&
            (identical(other.lastname, lastname) ||
                const DeepCollectionEquality()
                    .equals(other.lastname, lastname)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.phoneNumber, phoneNumber) ||
                const DeepCollectionEquality()
                    .equals(other.phoneNumber, phoneNumber)) &&
            (identical(other.nid, nid) ||
                const DeepCollectionEquality().equals(other.nid, nid)) &&
            (identical(other.isCleaner, isCleaner) ||
                const DeepCollectionEquality()
                    .equals(other.isCleaner, isCleaner)) &&
            (identical(other.dPrice, dPrice) ||
                const DeepCollectionEquality().equals(other.dPrice, dPrice)) &&
            (identical(other.wPrice, wPrice) ||
                const DeepCollectionEquality().equals(other.wPrice, wPrice)) &&
            (identical(other.mPrice, mPrice) ||
                const DeepCollectionEquality().equals(other.mPrice, mPrice)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(firstname) ^
      const DeepCollectionEquality().hash(lastname) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(phoneNumber) ^
      const DeepCollectionEquality().hash(nid) ^
      const DeepCollectionEquality().hash(isCleaner) ^
      const DeepCollectionEquality().hash(dPrice) ^
      const DeepCollectionEquality().hash(wPrice) ^
      const DeepCollectionEquality().hash(mPrice);

  @JsonKey(ignore: true)
  @override
  $UserDataCopyWith<UserData> get copyWith =>
      _$UserDataCopyWithImpl<UserData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)
        data,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return data(firstname, lastname, address, phoneNumber, nid, isCleaner,
        dPrice, wPrice, mPrice);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)?
        data,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(firstname, lastname, address, phoneNumber, nid, isCleaner,
          dPrice, wPrice, mPrice);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserList value) list,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserDataToJson(this)..['runtimeType'] = 'data';
  }
}

abstract class UserData implements UserProfile {
  const factory UserData(
      String firstname,
      String lastname,
      String address,
      String phoneNumber,
      String nid,
      bool isCleaner,
      int dPrice,
      int wPrice,
      int mPrice) = _$UserData;

  factory UserData.fromJson(Map<String, dynamic> json) = _$UserData.fromJson;

  String get firstname => throw _privateConstructorUsedError;
  String get lastname => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get nid => throw _privateConstructorUsedError;
  bool get isCleaner => throw _privateConstructorUsedError;
  int get dPrice => throw _privateConstructorUsedError;
  int get wPrice => throw _privateConstructorUsedError;
  int get mPrice => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserListCopyWith<$Res> {
  factory $UserListCopyWith(UserList value, $Res Function(UserList) then) =
      _$UserListCopyWithImpl<$Res>;
  $Res call({List<UserProfileObj>? users});
}

/// @nodoc
class _$UserListCopyWithImpl<$Res> extends _$UserProfileCopyWithImpl<$Res>
    implements $UserListCopyWith<$Res> {
  _$UserListCopyWithImpl(UserList _value, $Res Function(UserList) _then)
      : super(_value, (v) => _then(v as UserList));

  @override
  UserList get _value => super._value as UserList;

  @override
  $Res call({
    Object? users = freezed,
  }) {
    return _then(UserList(
      users: users == freezed
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<UserProfileObj>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserList implements UserList {
  const _$UserList({this.users});

  factory _$UserList.fromJson(Map<String, dynamic> json) =>
      _$_$UserListFromJson(json);

  @override
  final List<UserProfileObj>? users;

  @override
  String toString() {
    return 'UserProfile.list(users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserList &&
            (identical(other.users, users) ||
                const DeepCollectionEquality().equals(other.users, users)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(users);

  @JsonKey(ignore: true)
  @override
  $UserListCopyWith<UserList> get copyWith =>
      _$UserListCopyWithImpl<UserList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(UserData data) $default, {
    required TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)
        data,
    required TResult Function(List<UserProfileObj>? users) list,
  }) {
    return list(users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(UserData data)? $default, {
    TResult Function(
            String firstname,
            String lastname,
            String address,
            String phoneNumber,
            String nid,
            bool isCleaner,
            int dPrice,
            int wPrice,
            int mPrice)?
        data,
    TResult Function(List<UserProfileObj>? users)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(users);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(UserProfileObj value) $default, {
    required TResult Function(UserData value) data,
    required TResult Function(UserList value) list,
  }) {
    return list(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(UserProfileObj value)? $default, {
    TResult Function(UserData value)? data,
    TResult Function(UserList value)? list,
    required TResult orElse(),
  }) {
    if (list != null) {
      return list(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$UserListToJson(this)..['runtimeType'] = 'list';
  }
}

abstract class UserList implements UserProfile {
  const factory UserList({List<UserProfileObj>? users}) = _$UserList;

  factory UserList.fromJson(Map<String, dynamic> json) = _$UserList.fromJson;

  List<UserProfileObj>? get users => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserListCopyWith<UserList> get copyWith =>
      throw _privateConstructorUsedError;
}
