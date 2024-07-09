// moa_app_bar.dart
//
// 앱의 기본 bar 역할을 담당한다.
//
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moarium_frontend/util/color/colors.dart';

class MoaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leftWidget;
  final Widget centerWidget;
  final Widget rightWidget;

  const MoaAppBar({
    Key? key,
    this.leftWidget = const SizedBox.shrink(),
    this.centerWidget = const SizedBox.shrink(),
    this.rightWidget = const SizedBox.shrink(),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // AppBar 배경색
      backgroundColor: BACKGROUND_COLOR,

      flexibleSpace: SafeArea(
        child: Container(
          // Container margin
          margin: EdgeInsets.only(left: 32.w, right: 32.w, top: 25.h, bottom: 25.h),

          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: leftWidget,
              ),

              Align(
                alignment: Alignment.center,
                child: centerWidget,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: rightWidget,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // AppBar 크기
  @override
  Size get preferredSize => Size(390.w, 100.h);
}