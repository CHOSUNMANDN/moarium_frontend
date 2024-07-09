// login_screen.dart
//
// 사용자가 접속 후 로그인을 하지 않았다면 제일 처음 오게되는 페이지이다.
//
// flutter pakage
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moarium_frontend/components/molecules/moa_text_button.dart';
// color 상수
import 'package:moarium_frontend/util/color/colors.dart';
// text style 상수
import 'package:moarium_frontend/util/text/text_style.dart';
// moarium components pakage
import 'package:moarium_frontend/components/molecules/moa_app_bar.dart';
import 'package:moarium_frontend/components/atoms/small_logo.dart';
import 'package:moarium_frontend/components/atoms/google_logo.dart';
import 'package:moarium_frontend/components/molecules/medium_button.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,

      // Login main page app bar
      appBar: MoaAppBar(
        leftChild: SmallLogo(),
      ),

      // Login main page body
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            SizedBox(height: 100.h),

            Text(
              '함께하는 스터디',
              style: SEMIBOLD_X_LARGE.copyWith(color: SECONDARY_TEXT_COLOR),
            ),

            SizedBox(height: 24.h),

            Text(
              '스터디를 만들고 여러분의 목표를 달성해보세요.',
              style: REGULAR_SMALL.copyWith(color: SECONDARY_TEXT_COLOR),
            ),

            Spacer(),

            // Google login button
            MediumButton(
              onPressed: () => {
                // TODO : 구글 로그인 함수 구현
              },

              children: [
                GoogleLogo(),

                SizedBox(width: 12.w),

                Text(
                  '구글로 계속하기',
                  style: MEDIUM_MEDIUM.copyWith(color: BUTTON_TEXT_COLOR),
                ),
              ],
            ),

            SizedBox(height: 64.h),

            // 필수 이용 약관
            Center(
              child: Wrap(
                alignment: WrapAlignment.center,

                children: [
                  Text(
                    '‘계속하기’를 누르는 것으로 ',
                    style: REGULAR_SMALL.copyWith(color: TERTIARY_TEXT_COLOR),
                  ),

                  MoaTextButton(
                      onPressed: () => {
                        // TODO : 필수 이용 약관 페이지 구현
                      },

                      message: '필수 이용 약관',
                      style: REGULAR_SMALL.copyWith(
                        color: TERTIARY_TEXT_COLOR,
                        decoration: TextDecoration.underline,
                        decorationColor: TERTIARY_TEXT_COLOR,
                      )
                  ),

                  Text(
                    '에 동의하고 서비스를 이용합니다.',
                    style: REGULAR_SMALL.copyWith(color: TERTIARY_TEXT_COLOR),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),
          ],
        ),
      ),
    );
  }
}