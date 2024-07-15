import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'package:moarium_frontend/common/google/google.dart';
import 'package:moarium_frontend/login/model/user_model.dart';

final userMeRepositoryProvider = Provider<UserMeRepository>((ref) {
  final googleSignIn = ref.watch(googleSignInProvider);

  return UserMeRepository(googleSignIn: googleSignIn);
});

class UserMeRepository {
  final GoogleSignIn googleSignIn;

  UserMeRepository({
    required this.googleSignIn,
  });

  Future<UserModel> getMe() async {
    final GoogleSignInAccount? googleUser = googleSignIn.currentUser;

    if (googleUser == null) {
      throw Exception('User not signed in');
    }

    return UserModel(
      displayName: googleUser.displayName ?? '',
      email: googleUser.email,
      id: googleUser.id,
      photoUrl: googleUser.photoUrl ?? '',
    );
  }
}