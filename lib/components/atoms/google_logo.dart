// google_logo.dart
//
// google_logo를 띄워주는 역할을 담당한다.
//
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GoogleLogo extends StatelessWidget {
  const GoogleLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/logo/google_logo.svg",
      height: 24.h,
      width: 24.w,
    );
  }
}