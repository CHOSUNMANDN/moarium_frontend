import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:moarium_frontend/common/component/atom/custom_icon.dart';
import 'package:moarium_frontend/common/component/molecule/default_text_field.dart';
import 'package:moarium_frontend/common/const/color.dart';
import 'package:moarium_frontend/common/const/text.dart';
import 'package:moarium_frontend/common/component/molecule/medium_button.dart';
import 'package:moarium_frontend/common/component/template/default_layout.dart';
import 'package:moarium_frontend/login/model/user_info_model.dart';
import 'package:moarium_frontend/login/provider/user_info_provider.dart';
import 'package:moarium_frontend/login/provider/user_me_provider.dart';

class LoginFirstScreen extends StatefulWidget {
  static String get routeName => '/';

  const LoginFirstScreen({Key? key}) : super(key: key);

  @override
  _LoginFirstScreenState createState() => _LoginFirstScreenState();
}

class _LoginFirstScreenState extends State<LoginFirstScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nicknameController = TextEditingController();
  final _emailController = TextEditingController();
  final _majorController = TextEditingController();
  final _studentIdController = TextEditingController();

  bool _nameCheck = true;
  bool _majorCheck = true;
  bool _studentIdCheck = true;

  Timer? _debounce;

  void _onChanged(String value, ValueSetter<bool> setter) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () {
      setState(() {
        setter(value.isNotEmpty);
      });
    });
  }

  @override
  void initState() {
    super.initState();

    _nameController.addListener(() {
      _onChanged(_nameController.text, (value) => _nameCheck = value);
    });
    _studentIdController.addListener(() {
      _onChanged(_studentIdController.text, (value) => _studentIdCheck = value);
    });
    _majorController.addListener(() {
      _onChanged(_majorController.text, (value) => _majorCheck = value);
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    _nameController.dispose();
    _emailController.dispose();
    _majorController.dispose();
    _studentIdController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return DefaultLayout(
          leftChild: GestureDetector(
            onTap: () async {
              await ref.read(userMeProvider.notifier).logout();
            },
            child: CustomIcon(
              icon: 'left_arrow',
              size: 28,
            ),
          ),

          centerChild: Text(
            '회원 정보 입력',
            style: SEMIBOLD_LARGE,
          ),

          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32),

            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.disabled,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  DefaultTextField(
                    controller: _nameController,
                    label: '이름',
                    hint: '이름을 입력해주세요',
                    customIcon: 'person',
                  ),

                  if (!_nameCheck)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8),

                      child: SizedBox(
                        height: 22,
                        child: Text(
                          '이름은 필수 입력 사항이에요',
                          style: SEMIBOLD_SMALL.copyWith(color: ALERT_TEXT_COLOR),
                        ),
                      ),
                    ),

                  SizedBox(height: _nameCheck ? 20.0 : 10.0),

                  DefaultTextField(
                    controller: _nicknameController,
                    label: '닉네임',
                    hint: '닉네임을 입력해주세요',
                    customIcon: 'compass',
                  ),

                  const SizedBox(height: 20.0),

                  DefaultTextField(
                    controller: _emailController,
                    label: '이메일',
                    hint: '이메일을 입력해주세요',
                    customIcon: 'mail',
                  ),

                  const SizedBox(height: 20.0),

                  DefaultTextField(
                    controller: _majorController,
                    label: '전공',
                    hint: '전공을 입력해주세요',
                    customIcon: 'graduation_cap',
                  ),

                  if (!_majorCheck)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8),

                      child: SizedBox(
                        height: 22,
                        child: Text(
                          '전공은 필수 입력 사항이에요',
                          style: SEMIBOLD_SMALL.copyWith(color: ALERT_TEXT_COLOR),
                        ),
                      ),
                    ),

                  SizedBox(height: _majorCheck? 20.0 : 10.0),

                  DefaultTextField(
                    controller: _studentIdController,
                    label: '학번',
                    hint: '학번을 입력해주세요',
                    customIcon: 'book',
                  ),

                  if (!_studentIdCheck)
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8, right: 8, top: 8),

                      child: SizedBox(
                        height: 22,
                        child: Text(
                          '학번은 필수 입력 사항이에요',
                          style: SEMIBOLD_SMALL.copyWith(color: ALERT_TEXT_COLOR),
                        ),
                      ),
                    ),

                  SizedBox(height: _studentIdCheck ? 192.0 : 74.0),

                  Center(
                    child: MediumButton(
                      onPressed: () {
                        if (_nameController.text.isNotEmpty &&
                            _emailController.text.isNotEmpty &&
                            _majorController.text.isNotEmpty) {

                          final userInfo = UserInfoModel(
                            name: _nameController.text,
                            nickName: _nicknameController.text,
                            email: _emailController.text,
                            major: _majorController.text,
                            studentId: _studentIdController.text,
                            authenticationEmail: 'CHECK',
                            authenticationNickName: 'CHECK',
                          );

                          ref.read(userInfoProvider).postUserInfo(userInfo);
                        } else {
                          setState(() {
                            _nameCheck = _nameController.text.isNotEmpty;
                            _studentIdCheck = _emailController.text.isNotEmpty;
                            _majorCheck = _majorController.text.isNotEmpty;
                          });
                        }
                      },
                      children: [
                        SizedBox(
                          height: 24,
                          child: Text(
                            '작성 완료',
                            style: MEDIUM_MEDIUM.copyWith(color: BUTTON_TEXT_COLOR),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 64.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}





