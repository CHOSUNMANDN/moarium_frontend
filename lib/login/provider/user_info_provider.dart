import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moarium_frontend/login/model/user_info_model.dart';
import 'package:moarium_frontend/login/repository/user_info_repository.dart';

final userInfoProvider = ChangeNotifierProvider<UserInfoProvider>((ref) {
  final userInfoRepository = ref.watch(userInfoRepositoryProvider);

  return UserInfoProvider(userInfoRepository);
});

class UserInfoProvider extends ChangeNotifier {
  final UserInfoRepository _userInfoRepository;

  UserInfoProvider(this._userInfoRepository);

  Future<void> postUserInfo(UserInfoModel userInfo) async {
    try {
      await _userInfoRepository.postUserInfo(userInfoModel: userInfo);

    } catch (e) {
      if (e is DioException) {
        final _errorMessage = 'Error: ${e.response?.statusCode} ${e.response?.data}';
      } else {
        final _errorMessage = 'Error posting user info: $e';
      }
      notifyListeners();
    }
  }
}



