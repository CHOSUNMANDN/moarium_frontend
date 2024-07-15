import 'package:flutter/material.dart';

import 'package:moarium_frontend/common/const/color.dart';

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

        onPressed: onPressed,

        style: ElevatedButton.styleFrom(

          minimumSize: Size(326.0, 60.0),

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