import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/foods/representation/views/food_details_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListOfFoodItem extends StatelessWidget {
  const ListOfFoodItem({super.key, required this.index});

  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(FoodDetailsView.rn);
      },
      child: Container(
        constraints: BoxConstraints(
          maxWidth:index == 0? 188 : 168,
        ),
        padding: EdgeInsets.symmetric(vertical:index==0?10: 30,),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Card(
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              shadowColor: AppColors.halfBlack.withOpacity(0.5),
              elevation: 0.1,
              child: Padding(
                padding: const EdgeInsets.only(right: 20.0, left: 20,),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 10,
                  children: [
                    Text(
                      "Mazen Glal",
                      // S.of(context).food,
                      softWrap: true,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: index == 0
                          ? Styles.head16w600.copyWith(color: AppColors.black)
                          : Styles.head12w600.copyWith(color: AppColors.black),
                    ),
                    Text(
                      "Some Details",
                      // "some Details some Details some Details some Details some Details some Details some Details some Details some Details some Details some Details some Details some Details some Details some Details ",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.head12w600
                          .copyWith(color: AppColors.halfBlack.withOpacity(0.7)),
                    ),
                    Text(
                      "310",
                      style: index == 0
                          ? Styles.head19w700.copyWith(color: AppColors.green)
                          : Styles.head15w700.copyWith(color: AppColors.green),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(bottom:80),
              child: Align(
                alignment: index == 0 ? Alignment.topCenter : Alignment.center,
                child: Image.asset(
                  index == 0 ? Assets.food1 : Assets.food2,
                  height: index == 0 ? 133 : 130,
                  fit: index == 0 ? BoxFit.fitHeight : null,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
