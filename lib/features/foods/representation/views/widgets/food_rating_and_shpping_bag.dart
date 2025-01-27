import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class FoodRatingAndShoppingBag extends StatelessWidget {
  const FoodRatingAndShoppingBag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.star,color: Colors.amber,size: 20,),
        SizedBox(width: 5,),
        Text("4.8 ${S.of(context).rating}",style: Styles.head14w400.copyWith(color: Colors.grey),),
        Spacer(),
        Icon(Icons.shopping_bag,color: AppColors.green,size: 20,),
        SizedBox(width: 5,),
        Text("2000+ ${S.of(context).order}",style: Styles.head14w400.copyWith(color: Colors.grey),),
        Spacer(),
      ],
    );
  }
}
