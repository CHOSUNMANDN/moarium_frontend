// moa_logo.dart
//
// moa_logo를 띄워주는 역할을 담당한다.
//
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MoaLogo extends StatelessWidget {
  const MoaLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      "assets/logo/small_logo.svg",
      height: 50.h,
      width: 118.w,
    );
  }
}