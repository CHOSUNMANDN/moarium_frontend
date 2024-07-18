import 'package:dio/dio.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:moarium_frontend/common/const/data.dart';
import 'package:moarium_frontend/common/dio/dio.dart';
import 'package:moarium_frontend/common/google/google.dart';
import 'package:moarium_frontend/common/model/login_response.dart';

final authRepositoryProvider = Provider<AuthRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final googleSignIn = ref.watch(googleSignInProvider);

  return AuthRepository(dio: dio, googleSignIn: googleSignIn, baseUrl: 'http://$ip/users/login/google');
});

class AuthRepository {
  final Dio dio;
  final GoogleSignIn googleSignIn;
  final String baseUrl;

  AuthRepository({
    required this.dio,
    required this.googleSignIn,
    required this.baseUrl,
  });

  Future<LoginResponse> login({
    required String authCode,
  }) async {
    final response = await dio.post(
      baseUrl,
      data: {'authCode': authCode},
    );

    if (response.statusCode == 200) {
      // final result = response.data['result'];
      // final loginResponse = LoginResponse.fromJson(result);
      //
      // return loginResponse;
      // 테스트 코드
      //
      // 임시로 토큰을 받아 온다.
      final testTokenResponse = await dio.post(
        'http://$ip/test/login',
        data: {'memberId': '10'},
      );

      final resultResponse = LoginResponse(
        accessToken: testTokenResponse.data['result']['accessToken'],
        memberStatus: response.data['result']['memberStatus'],
      );

      return resultResponse;
    } else {
      throw Exception('Token exchange failed');
    }
  }

  Future<GoogleSignInAccount?> signIn({bool silently = false}) async {
    return silently ? await googleSignIn.signInSilently() : await googleSignIn.signIn();
  }

  Future<void> signOut() async {
    await googleSignIn.signOut();
  }
}
