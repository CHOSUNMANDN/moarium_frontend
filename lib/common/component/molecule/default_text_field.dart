import 'package:flutter/material.dart';
import 'package:moarium_frontend/common/component/atom/custom_icon.dart';
import 'package:moarium_frontend/common/const/color.dart';
import 'package:moarium_frontend/common/const/text.dart';

class DefaultTextField extends StatefulWidget {
  final String? label;
  final String hint;
  final String customIcon;
  final double iconSize;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;

  const DefaultTextField({
    Key? key,
    this.label,
    required this.hint,
    required this.customIcon,
    this.iconSize = 24,
    this.enabled = true,
    this.onChanged,
    required this.controller,
    this.validator,
  }) : super(key: key);

  @override
  _DefaultTextFieldState createState() => _DefaultTextFieldState();
}

class _DefaultTextFieldState extends State<DefaultTextField> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: SizedBox(
              height: 22,
              child: Text(
                widget.label!,
                style: SEMIBOLD_SMALL.copyWith(color: PRIMARY_TEXT_COLOR),
              ),
            ),
          ),

        TextSelectionTheme(
          data: TextSelectionThemeData(
            selectionColor: TEXTFIELD_CURSOR_COLOR.withOpacity(0.5),
          ),
          child: Container(
            width: double.infinity,
            height: 60,

            child: TextFormField(
              controller: widget.controller,

              validator: widget.validator,

              decoration: InputDecoration(
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 6),

                  child: CustomIcon(
                    icon: widget.customIcon,
                    size: widget.iconSize,
                    customColor: PRIMARY_TEXT_COLOR,
                  ),
                ),

                hintText: widget.hint,

                contentPadding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),

                hintStyle: widget.enabled
                    ? SEMIBOLD_SMALL.copyWith(color: PRIMARY_TEXT_COLOR)
                    : SEMIBOLD_SMALL.copyWith(color: SECONDARY_TEXT_COLOR),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: TEXTFIELD_CURSOR_COLOR),
                  borderRadius: BorderRadius.circular(16),
                ),

                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PRIMARY_TEXT_COLOR),
                  borderRadius: BorderRadius.circular(16),
                ),

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),

              style: SEMIBOLD_SMALL.copyWith(color: SECONDARY_TEXT_COLOR),
              cursorColor: TEXTFIELD_CURSOR_COLOR,

              enabled: widget.enabled,
            ),
          ),
        ),
      ],
    );
  }
}
