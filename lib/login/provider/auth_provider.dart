import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:moarium_frontend/login/provider/user_me_provider.dart';
import 'package:moarium_frontend/login/model/user_model.dart';

final authProvider = ChangeNotifierProvider((ref) => AuthNotifier(ref: ref));

class AuthNotifier extends ChangeNotifier {
  final Ref ref;
  
  AuthNotifier({
    required this.ref,
  }) {
    ref.listen<UserModelBase?>(userMeProvider, (previous, next) {
      if (previous != next) {
        notifyListeners();
      }
    });
  }

  void logout() {
    ref.read(userMeProvider.notifier).logout();
  }
}