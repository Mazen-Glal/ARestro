import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/features/foods/representation/views/widgets/food_component_details.dart';
import 'package:arestro/features/foods/representation/views/widgets/food_name.dart';
import 'package:arestro/features/foods/representation/views/widgets/food_rating_and_shpping_bag.dart';
import 'package:arestro/features/order/representation/views/order_details_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FoodDetailsViewBodyItem extends StatelessWidget {
  const FoodDetailsViewBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 15,
            children: [
              Image.asset(
                Assets.food3,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2.8,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FoodName(),
                    FoodRatingAndShoppingBag(),
                    FoodComponentDetails(),
                    FoodComponentDetails(),
                  ],
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 33.0,vertical: 35),
          child: DefaultButton(onPressed: () {
            GoRouter.of(context).push(OrderDetailsView.rn);
          }, backgroundColor: AppColors.green, text: S.of(context).add_to_cart,textColor: AppColors.white,),
        ),
      ],
    );
  }
}
