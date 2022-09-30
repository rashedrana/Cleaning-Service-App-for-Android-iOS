import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
abstract class UserProfile with _$UserProfile {
  const factory UserProfile(UserData data) = UserProfileObj;

  const factory UserProfile.data(
    String firstname,
    String lastname,
    String address,
    String phoneNumber,
    String nid,
    bool isCleaner,
    int dPrice,
    int wPrice,
    int mPrice,
  ) = UserData;

  // factory UserProfile.empty() =>
  //     const UserProfileObj(UserData('', '', "", '', "", "", "", "", {}));
  const factory UserProfile.list({@required List<UserProfileObj>? users}) =
      UserList;
  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}
