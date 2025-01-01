import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class RestaurantItemForSearch extends StatelessWidget {
  const RestaurantItemForSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // GoRouter.of(context).push(RestaurantDetails.rn);
        print("go to rastaurant details.");
      },
      child: Card(
        elevation: 0.2,
        shadowColor: AppColors.halfBlack,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Assets.restaurant1,
                    height: 85,
                    width: 85,
                    fit: BoxFit.cover,
                    alignment: Alignment.center,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: (MediaQuery.of(context).size.width / 2),
                        // maxHeight: 50
                      ),
                      child: Text(
                        "Restaurant Name ",
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 1,
                        style: Styles.head14w700,
                      ),
                    ),
                    Container(
                      constraints: BoxConstraints(
                        maxWidth: (MediaQuery.of(context).size.width / 2),
                        // maxHeight: 50
                      ),
                      child: Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor consectetur adipiscing elit",
                        style: Styles.head10w400,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ),
                    SizedBox(height: 5),
                    RatingBarIndicator(
                      rating: 4.0,
                      itemBuilder: (context, index) => Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      itemCount: 5,
                      itemSize: 10.0,
                      unratedColor: Colors.black.withAlpha(50),

                    )
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 5,
              children: [
                Icon(FontAwesomeIcons.locationCrosshairs,size: 10,),
                Text("12 ${S.of(context).km_form_your_location}",style: Styles.head10w500.copyWith(color: AppColors.halfBlack),),
                Spacer(),
                Text("Crowded",style: Styles.head10w500,),
                SizedBox(width: 15,)
              ],
            ),
            SizedBox(height: 0,)
          ],
        ),
      ),
    );
  }
}
