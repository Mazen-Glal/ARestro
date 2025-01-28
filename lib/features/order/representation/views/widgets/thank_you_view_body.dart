import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/order/representation/views/widgets/order_rating_feedback.dart';
import 'package:arestro/features/order/representation/views/widgets/thank_you_buttons.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class ThankYouViewBody extends StatelessWidget {
  ThankYouViewBody({super.key});

  final TextEditingController feedbackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.background),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 4,
              ),
              Icon(Icons.check_circle_rounded,
                  color: AppColors.green, size: 100),
              SizedBox(
                height: 10,
              ),
              Text(
                S.of(context).thank_you,
                style: Styles.head24w700.copyWith(
                    color: AppColors.greenBlack,
                    decoration: TextDecoration.none),
              ),
              Text(
                S.of(context).order_completed,
                style: Styles.head24w700.copyWith(
                    color: AppColors.greenBlack,
                    decoration: TextDecoration.none),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              OrderRatingAndFeedback(feedbackController: feedbackController),
              SizedBox(
                height: MediaQuery.of(context).size.height / 50,
              ),
              ThankYouButtons(),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
