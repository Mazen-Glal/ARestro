import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/restaurants/representation/views/restaurant_details_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListOfRestaurantItem extends StatelessWidget {
  const ListOfRestaurantItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(RestaurantDetailsView.rn);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // spacing: 5,
        children: [
          Image.asset(
            Assets.restaurant1,
            fit: BoxFit.cover,
            width: 156,
            height: 94,
            alignment: Alignment.center,
          ),
          SizedBox(height: 10,),
          Container(
            constraints: BoxConstraints(
              maxWidth: 129,
            ),
            child: Text(
              "Restaurant Name",
              softWrap: true,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Styles.head16w600.copyWith(color: AppColors.black),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            spacing: 5,
            children: [
              Icon(
                Icons.star,
                size: 25,
                color: Colors.amber,
              ),
              Text(
                "4.8",
                style: Styles.head14w400.copyWith(
                  color: AppColors.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
