import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderRatingAndFeedback extends StatelessWidget {
  const OrderRatingAndFeedback({
    super.key,
    required this.feedbackController,
  });

  final TextEditingController feedbackController;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        RatingBar.builder(
          itemBuilder: (context, index) => Icon(Icons.star,color: Colors.amber,weight: 100,),
          itemSize: 40,
          allowHalfRating: true,
          itemPadding: EdgeInsets.symmetric(horizontal: 10),
          maxRating: 5,
          minRating: 1,
          unratedColor: Colors.grey,
          initialRating: 2,
          onRatingUpdate: (value) {},
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height/30,
        ),
        DefaultTextFormField(
          controller: feedbackController,
          prefixIcon: Icons.edit,

          hintText: S.of(context).leave_feedback,
        ),
      ],
    );
  }
}

