import 'package:arestro/features/restaurants/representation/views/widgets/reserve_table_thank_you_view.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/select_table_item.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_description.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_facilities.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ReserveTableViewBody extends StatelessWidget {
  const ReserveTableViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 10),
        child: Column(
          spacing: 20,
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                // padding: const EdgeInsets.all(25.0),
                child: Column(
                  spacing: 20,
                  children: [
                    SelectTableItem(),
                    RestaurantDescription(
                      text:
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
                      titleTextStyle: Styles.head15w700,
                    ),
                    RestaurantFacilities(
                      titleTextStyle: Styles.head15w700,
                    ),
                  ],
                ),
              ),
            ),
            DefaultButton(
              backgroundColor: AppColors.green,
              onPressed: () {
                GoRouter.of(context).go(ReserveTableThankYouView.rn);
              },
              text: S.of(context).reserve_the_table,
              textColor: AppColors.white,
            ),
          ],
        ),
      ),
    );
  }
}
