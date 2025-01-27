import 'package:flutter/material.dart';
class OrderDetailsItemText extends StatelessWidget {
  const OrderDetailsItemText({
    super.key, required this.text, required this.style,
  });

  final String text;
  final TextStyle style;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        text,

        style: style,
        // style: Styles.head14w500,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width / 3),
    );
  }
}
