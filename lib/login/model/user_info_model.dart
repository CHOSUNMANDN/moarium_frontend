import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
class UserInfoModel with _$UserInfoModel {
  const factory UserInfoModel({
    required String name,
    required String nickName,
    required String email,
    required String major,
    required String studentId,
    required String authenticationEmail,
    required String authenticationNickName,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}
