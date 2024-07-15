import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:moarium_frontend/login/provider/user_me_provider.dart';
import 'package:moarium_frontend/login/model/user_model.dart';
import 'package:moarium_frontend/login/view/login_screen.dart';

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

  List<GoRoute> get routes => [
    GoRoute(
      path: '/login',
      name: LoginScreen.routeName,
      builder: (_, __) => LoginScreen(),
    ),
  ];

  String? redirectLogic(BuildContext context, GoRouterState state) {
    final UserModelBase? user = ref.read(userMeProvider);

    final logginIn = state.uri.toString() == '/login';

    if (user == null) {
      return logginIn ? null : '/login';
    }

    if (user is UserModel) {
      return logginIn || state.uri.toString() == '/splash' ? '/' : null;
    }

    // UserModelError
    if (user is UserModelError) {
      return !logginIn ? '/login' : null;
    }

    return null;
  }
}