import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    super.key,
    required this.onPressed,
    required this.backgroundColor,
    required this.text,
    this.textColor,
  });
  final void Function()? onPressed;
  final String text;
  final Color backgroundColor;
  final Color? textColor;
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
            borderRadius: BorderRadius.circular(2)
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: Styles.head16w400.copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
