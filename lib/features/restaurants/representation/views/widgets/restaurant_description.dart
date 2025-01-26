import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class RestaurantDescription extends StatelessWidget {
  const RestaurantDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).description,
          style: Styles.head24w700,
        ),
        Container(
          constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width - 40,
          ),
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
            softWrap: true,
            style: Styles.head12w500,
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}

