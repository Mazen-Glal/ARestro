import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    this.textColor, this.textStyle, this.prefixIcon,
  });
  final void Function()? onPressed;
  final String text;
  final Color backgroundColor;
  final Color? textColor;
  final TextStyle? textStyle;
  final Widget? prefixIcon;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        elevation: WidgetStatePropertyAll(0),
        backgroundColor: WidgetStatePropertyAll(backgroundColor),
        alignment: Alignment.center,
        // textStyle: WidgetStatePropertyAll(),
        shape: WidgetStatePropertyAll(
          BeveledRectangleBorder(
            side: BorderSide(
              width: 0.2,
            ),
            borderRadius: BorderRadius.circular(3)
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(prefixIcon!=null)
            prefixIcon!,
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  text,
                  style:textStyle?? Styles.head16w400.copyWith(color: textColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
