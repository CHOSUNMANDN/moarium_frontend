import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:moarium_frontend/common/const/color.dart';
import 'package:moarium_frontend/common/const/text.dart';
import 'package:moarium_frontend/common/component/molecule/default_text_button.dart';
import 'package:moarium_frontend/common/component/atom/custom_logo.dart';
import 'package:moarium_frontend/common/component/molecule/medium_button.dart';
import 'package:moarium_frontend/login/model/user_model.dart';
import 'package:moarium_frontend/common/component/template/default_layout.dart';

import 'package:moarium_frontend/login/provider/user_me_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  static String get routeName => 'login';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(userMeProvider);

    return DefaultLayout(
      leftChild: const CustomLogo(
        logo: 'small_logo',
        width: 118.0,
        height: 50.0,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),

            SizedBox(
              height: 44,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),

                child: Text(
                  '함께하는 스터디',
                  style: SEMIBOLD_X_LARGE.copyWith(color: SECONDARY_TEXT_COLOR),
                ),
              ),
            ),

            const SizedBox(height: 24),

            SizedBox(
              height: 22,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  '스터디를 만들고 여러분의 목표를 달성해보세요.',
                  style: REGULAR_SMALL.copyWith(color: SECONDARY_TEXT_COLOR),
                ),
              ),
            ),

            Spacer(),

            Center(
              child: MediumButton(
                onPressed: state is UserModelLoading
                    ? () {}
                    : () async {
                  await ref.read(userMeProvider.notifier).login();
                },

                children: [
                  const CustomLogo(
                    logo: 'google_logo',
                    width: 24,
                    height: 24,
                  ),

                  const SizedBox(width: 12),

                  SizedBox(
                    height: 24,
                    child: Text(
                      '구글로 계속하기',
                      style: MEDIUM_MEDIUM.copyWith(color: BUTTON_TEXT_COLOR),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 64),

            SizedBox(
              height: 44,

              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),

                child: Center(
                  child: Wrap(
                    alignment: WrapAlignment.center,
                    children: [
                      Text(
                        '‘계속하기’를 누르는 것으로 ',
                        style: REGULAR_SMALL.copyWith(color: TERTIARY_TEXT_COLOR),
                      ),

                      DefaultTextButton(
                        onPressed: () async {
                          // TODO : 필수 이용 약관 페이지 구현
                          // 임시로 로그 아웃 버튼
                          await ref.read(userMeProvider.notifier).logout();
                        },

                        message: '필수 이용 약관',

                        style: REGULAR_SMALL.copyWith(
                          color: TERTIARY_TEXT_COLOR,
                          decoration: TextDecoration.underline,
                          decorationColor: TERTIARY_TEXT_COLOR,
                        ),
                      ),

                      Text(
                        '에 동의하고 서비스를 이용합니다.',
                        style: REGULAR_SMALL.copyWith(color: TERTIARY_TEXT_COLOR),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

