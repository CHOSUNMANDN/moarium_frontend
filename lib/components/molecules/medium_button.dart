// medium_button.dart
//
// pixel: 326 * 60
// background color: BUTTON_BACKGROUND_COLOR
// text color : BUTTON_TEXT_COLOR
//
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:moarium_frontend/util/color/colors.dart';

class MediumButton extends StatelessWidget {
  final VoidCallback onPressed;
  final List<Widget> children;

  const MediumButton({
    Key? key,
    required this.onPressed,
    required this.children,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        // 버튼 동작
        onPressed: onPressed,

        style: ElevatedButton.styleFrom(
          // button 크기
          minimumSize: Size(326.0.w, 60.0.h),

          // button background color
          backgroundColor: BUTTON_BACKGROUND_COLOR,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: children,
      ),
    );
  }
}