import 'package:flutter/material.dart';
import 'package:moarium_frontend/common/component/atom/custom_icon.dart';
import 'package:moarium_frontend/common/component/atom/custom_logo.dart';

import 'package:moarium_frontend/common/const/color.dart';

class DefaultAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget leftChild;
  final Widget centerChild;
  final List<Widget> rightChildren;

  const DefaultAppBar({
    Key? key,
    this.leftChild = const SizedBox.shrink(),
    this.centerChild = const SizedBox.shrink(),
    this.rightChildren = const [],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // AppBar 배경색
      backgroundColor: APP_BAR_BACKGROUND_COLOR,

      // 스크롤 시 배경색이 바뀌지 않도록 함.
      scrolledUnderElevation: 0,

      flexibleSpace: SafeArea(
        child: Container(
          margin: EdgeInsets.only(left: 32, right: 32, top: 25, bottom: 25),

          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: leftChild,
              ),

              Align(
                alignment: Alignment.center,
                child: centerChild,
              ),

              Align(
                alignment: Alignment.centerRight,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: rightChildren,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // AppBar 크기
  @override
  Size get preferredSize => Size(390, 100);
}