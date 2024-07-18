import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrofit/retrofit.dart';

import 'package:moarium_frontend/common/const/data.dart';
import 'package:moarium_frontend/common/dio/dio.dart';
import 'package:moarium_frontend/login/model/user_info_model.dart';

part 'user_info_repository.g.dart';

final userInfoRepositoryProvider = Provider<UserInfoRepository>((ref) {
      final dio = ref.watch(dioProvider);

      return UserInfoRepository(dio, baseUrl: 'http://$ip/users/login/google/first');
    },
);

@RestApi()
abstract class UserInfoRepository {
  factory UserInfoRepository(Dio dio, {String baseUrl}) = _UserInfoRepository;

  @POST('')
  @Headers({
    'accept': 'application/json;charset=UTF-8',
    'Content-Type': 'application/json;charset=UTF-8',
    'accessToken': 'true',
  })
  Future<UserInfoModel> postUserInfo({
    @Body() required UserInfoModel userInfoModel,
  });
}