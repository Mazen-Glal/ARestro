import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/constants.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/foods/representation/views/food_details_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OfferForMonth extends StatelessWidget {
  const OfferForMonth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topStart,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 5,
          width: double.infinity,
          decoration: BoxDecoration(
            // color: AppColors.green,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [
                AppColors.green,
                AppColors.white,
              ],
              begin: language == Assets.english
                  ? Alignment.topLeft
                  : Alignment.topRight,
              end: language == Assets.english
                  ? Alignment.bottomRight
                  : Alignment.bottomLeft,
            ),
          ),
        ),
        Align(
          alignment: language == Assets.english
              ? Alignment.bottomRight
              : Alignment.bottomLeft,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              Assets.burgers,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height / 5,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: language == Assets.english ? 20 : 0,
            top: language == Assets.english ? 20 : 20,
            right: language == Assets.english ? 0 : 5,
          ),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 133,
                child: Text(
                  S.of(context).special_order_for_march,
                  style: Styles.head18w800
                      .copyWith(color: AppColors.white, height: 1.1),
                  softWrap: true,
                ),
              ),
              SizedBox(
                width: 115,
                child: Text(
                  S.of(context).we_are_here_with_the_west_wurgers_in_town,
                  style: Styles.head10w500.copyWith(
                    color: AppColors.white,
                  ),
                  softWrap: true,
                ),
              ),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {
                    GoRouter.of(context).push(FoodDetailsView.rn);
                  },
                  style: ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 20, vertical: 0)),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                  ),
                  child: Text(
                    S.of(context).buy_now,
                    style: Styles.head14w500.copyWith(color: AppColors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
