import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'package:moarium_frontend/common/secure_storage/secure_storage.dart';
import 'package:moarium_frontend/login/model/user_model.dart';
import 'package:moarium_frontend/login/repository/auth_repository.dart';
import 'package:moarium_frontend/login/repository/user_me_repository.dart';
import 'package:moarium_frontend/common/const/data.dart';

final userMeProvider =
StateNotifierProvider<UserMeStateNotifier, UserModelBase?>((ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  final userMeRepository = ref.watch(userMeRepositoryProvider);
  final storage = ref.watch(secureStorageProvider);

  return UserMeStateNotifier(
    authRepository: authRepository,
    userMeRepository: userMeRepository,
    storage: storage,
  );
});

class UserMeStateNotifier extends StateNotifier<UserModelBase?> {
  final AuthRepository authRepository;
  final UserMeRepository userMeRepository;
  final FlutterSecureStorage storage;

  UserMeStateNotifier({
    required this.authRepository,
    required this.userMeRepository,
    required this.storage,
  }) : super(UserModelLoading()) {
    getMe();
  }

  Future<void> getMe() async {
    final accessToken = await storage.read(key: ACCESS_TOKEN_KEY);

    if (accessToken == null) {
      state = null;
      return;
    }

    final response = await userMeRepository.getMe();

    state = response;
  }

  Future<void> login() async {
    try {
      final googleUser = await authRepository.signIn();
      if (googleUser != null) {
        final authCode = googleUser.serverAuthCode;

        if (authCode != null) {
          final tokenResponse = await authRepository.login(authCode: authCode);

          print(tokenResponse);

          await storage.write(key: ACCESS_TOKEN_KEY, value: tokenResponse.accessToken);

          final userResponse = await userMeRepository.getMe();

          state = userResponse;
        }
      }
    } catch (e) {
      state = UserModelError(message: '구글 로그인에 실패했습니다.');

      return Future.value(state);
    }
  }

  Future<void> logout() async {
    state = null;

    await Future.wait([
      authRepository.signOut(),
      storage.delete(key: ACCESS_TOKEN_KEY),
    ]);
  }
}
