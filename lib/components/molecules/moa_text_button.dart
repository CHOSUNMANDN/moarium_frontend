import 'package:flutter/material.dart';

class MoaTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String message;
  final TextStyle style;

  const MoaTextButton({
    Key? key,
    required this.onPressed,
    required this.message,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,

      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.zero,
        ),
      ),

      child: Text(
        message,
        style: style,
      ),
    );
  }
}