
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';

class TextAndTextButton extends StatelessWidget {
  const TextAndTextButton({
    super.key, required this.text, required this.textButton, required this.onPressed,
  });

  final String text;
  final String textButton;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Text(text,),
          TextButton(
            onPressed: onPressed,
            style: ButtonStyle(
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              padding: WidgetStatePropertyAll(EdgeInsets.zero),
            ),
            child: Text(
              textButton,
              style: Styles.head14w500.copyWith(color: Colors.blue,),
            ),
          ),
        ]
    );
  }
}
