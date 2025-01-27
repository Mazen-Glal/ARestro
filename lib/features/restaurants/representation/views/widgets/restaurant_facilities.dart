import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/facilities_item.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_details_view_body.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class RestaurantFacilities extends StatelessWidget {
  const RestaurantFacilities({
    super.key, this.titleTextStyle, this.textTextStyle,
  });

  final TextStyle? titleTextStyle;
  final TextStyle? textTextStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).facilities,
          style: titleTextStyle??Styles.head24w700,
        ),
        SizedBox(height: 5,),
        Row(
          children: [
            Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FacilitiesItem(text: S.of(context).snack_bar,),
                FacilitiesItem(text: S.of(context).bikes_and_car_parking,),

              ],
            ),
            Spacer(),
            Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FacilitiesItem(text: S.of(context).toilet,),
                FacilitiesItem(text: S.of(context).water_facility,),

              ],
            )
          ],
        ),
      ],
    );
  }
}
