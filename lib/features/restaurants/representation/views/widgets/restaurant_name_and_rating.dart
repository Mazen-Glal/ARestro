import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class RestaurantNameAndRating extends StatelessWidget {
  const RestaurantNameAndRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width/2
        ),
        child: Text(
          "Restaurant Name",
          softWrap: true,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Styles.head24w700,
        ),
      ),
      Spacer(),
      RatingBar.builder(

        initialRating: 3,
        minRating: 1,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        // itemPadding: EdgeInsets.symmetric(horizontal: 0.1),
        itemBuilder: (context, index) {
          return Icon(
            Icons.star,
            color: Colors.amber,
            size: 1,
          );
        },
        onRatingUpdate: (rating) {
          print(rating);
        },
        itemSize: 20,

      ),
    ]);
  }
}
