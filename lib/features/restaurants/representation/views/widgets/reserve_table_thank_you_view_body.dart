import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/home/representation/views/home_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReserveTableThankYouViewBody extends StatelessWidget {
  const ReserveTableThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
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
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height/9,),
              Image.asset(Assets.reserveThankYou),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 3)*2,
                child: Text(
                  S.of(context).your_table_was_reserved_successfully,
                  textAlign: TextAlign.center,
                  style: Styles.head24w700.copyWith(
                    color: AppColors.green,
                  ),
                ),
              ),
              Container(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width / 3)*2,
                child: Text(
                  S.of(context).text_under_reserved_successfully,
                  textAlign: TextAlign.center,
                  style: Styles.head14w400.copyWith(
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/9,),
              DefaultButton(
                text: S.of(context).order_food,
                backgroundColor: AppColors.green,
                textColor: AppColors.white,
                onPressed: () {
                  GoRouter.of(context).go(HomeView.rn);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
