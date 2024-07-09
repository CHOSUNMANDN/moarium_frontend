// login_screen.dart
//
// 사용자가 접속 후 로그인을 하지 않았다면 제일 처음 오게되는 페이지이다.
//
// flutter pakage
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moarium_frontend/components/molecules/medium_button.dart';
// color 상수
import 'package:moarium_frontend/util/color/colors.dart';
// moarium components pakage
import 'package:moarium_frontend/components/molecules/moa_app_bar.dart';
import 'package:moarium_frontend/components/atoms/moa_logo.dart';
import 'package:moarium_frontend/components/atoms/google_logo.dart';

class LoginScreen extends StatelessWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,

      // Login main page App Bar
      appBar: MoaAppBar(
          leftChild: MoaLogo(),
      ),

      body: Stack(
        children: [
          Positioned(
            top: 100.h,
            left: 32.0.w,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h),

                Text(
                  '함께하는 스터디',
                  style: TextStyle(
                    fontSize: 32.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 24.h),

                Text(
                  '스터디를 만들고 여러분의 목표를 달성해보세요.',
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: 'Inter',
                  ),
                ),

              ],
            ),
          ),

          Positioned(
            left: 32.w,
            right: 32.w,
            bottom: 124.h,
            child: MediumButton(
              onPressed: () => { print("testing") },
              children: [
                GoogleLogo(),
                SizedBox(width: 12.w), // 로고와 텍스트 사이의 간격
                Text(
                  '구글로 계속하기',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500, // medium weight 설정
                    height: 1.5, // line height를 24px로 설정
                    letterSpacing: -2.5.sp / 1000, // letter spacing 설정
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            left: 73.w,
            right: 73.w,
            bottom: 16.h,
            child: Center(
              child: GestureDetector(
                onTap: () => {},
                child: Text.rich(
                  TextSpan(
                    text: '‘계속하기’를 누르는 것으로 ',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: SECONDARY_TEXT_COLOR,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: '필수 이용약관',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor: SECONDARY_TEXT_COLOR,
                          color: SECONDARY_TEXT_COLOR,
                        ),
                      ),
                      TextSpan(
                        text: '에 동의하고 서비스를 이용합니다.',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: SECONDARY_TEXT_COLOR,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}