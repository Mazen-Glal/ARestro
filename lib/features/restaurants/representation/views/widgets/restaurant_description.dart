import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class RestaurantDescription extends StatelessWidget {
  const RestaurantDescription({
    super.key, required this.text, this.titleTextStyle, this.textTextStyle,
  });

  final String text;
  final TextStyle? titleTextStyle;
  final TextStyle? textTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).description,
          style:titleTextStyle?? Styles.head24w700,
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 40,
          ),
          child: Text(
            text,
            // "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
            softWrap: true,
            style:textTextStyle?? Styles.head12w500,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}

