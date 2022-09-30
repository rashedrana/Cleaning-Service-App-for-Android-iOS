// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileObj _$_$UserProfileObjFromJson(Map<String, dynamic> json) {
  return _$UserProfileObj(
    UserData.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$UserProfileObjToJson(_$UserProfileObj instance) =>
    <String, dynamic>{
      'data': instance.data.toJson(),
    };

_$UserData _$_$UserDataFromJson(Map<String, dynamic> json) {
  return _$UserData(
    json['firstname'] as String,
    json['lastname'] as String,
    json['address'] as String,
    json['phoneNumber'] as String,
    json['nid'] as String,
    json['isCleaner'] as bool,
    json['dPrice'] as int,
    json['wPrice'] as int,
    json['mPrice'] as int,
  );
}

Map<String, dynamic> _$_$UserDataToJson(_$UserData instance) =>
    <String, dynamic>{
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'nid': instance.nid,
      'isCleaner': instance.isCleaner,
      'dPrice': instance.dPrice,
      'wPrice': instance.wPrice,
      'mPrice': instance.mPrice,
    };

_$UserList _$_$UserListFromJson(Map<String, dynamic> json) {
  return _$UserList(
    users: (json['users'] as List<dynamic>?)
        ?.map((e) => UserProfileObj.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$UserListToJson(_$UserList instance) =>
    <String, dynamic>{
      'users': instance.users?.map((e) => e.toJson()).toList(),
    };
