// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserInfoModelImpl _$$UserInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$UserInfoModelImpl(
      name: json['name'] as String,
      nickName: json['nickName'] as String,
      email: json['email'] as String,
      major: json['major'] as String,
      studentId: json['studentId'] as String,
      authenticationEmail: json['authenticationEmail'] as String,
      authenticationNickName: json['authenticationNickName'] as String,
    );

Map<String, dynamic> _$$UserInfoModelImplToJson(_$UserInfoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'nickName': instance.nickName,
      'email': instance.email,
      'major': instance.major,
      'studentId': instance.studentId,
      'authenticationEmail': instance.authenticationEmail,
      'authenticationNickName': instance.authenticationNickName,
    };
