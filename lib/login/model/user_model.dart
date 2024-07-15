import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

abstract class UserModelBase {}

@freezed
class UserModel extends UserModelBase with _$UserModel {
  const factory UserModel({
    required String displayName,
    required String email,
    required String id,
    required String photoUrl,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}

class UserModelError extends UserModelBase {
  final String message;

  UserModelError({
    required this.message,
  });
}

class UserModelLoading extends UserModelBase {}