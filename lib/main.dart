// main.dart
//
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moarium_frontend/screens/login/login_screen.dart';
import 'package:moarium_frontend/util/color/colors.dart';

void main() {

  // 가로 모드 방지
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      // 피그마 디자인을 기준으로 한 화면 크기
      designSize: const Size(390, 844),

      builder: (context, child) {
        return MaterialApp(
          title: 'moarium',

          // 보통 기기의 폰트 사이즈를 따라가지 않고 고정
          builder: (context, child) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
                child: child!
            );
          },

          // 기본 화면은 Login
          home: const LoginScreen(),
        );
      },
    );
  }
}