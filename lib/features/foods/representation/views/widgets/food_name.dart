import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';

class FoodName extends StatelessWidget {
  const FoodName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
          maxWidth: (MediaQuery.of(context).size.width/5)*3
      ),
      child: Text(
        "Chicken Burger Promo Pack",
        softWrap: true,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: Styles.head24w700,
      ),
    );
  }
}