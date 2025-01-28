import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/features/foods/representation/views/widgets/list_of_foods.dart';
import 'package:arestro/features/home/representation/views/widgets/title_of_list.dart';
import 'package:arestro/features/restaurants/representation/views/reserve_table_view.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_description.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_facilities.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_location_details.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/restaurant_name_and_rating.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RestaurantDetailsViewBody extends StatelessWidget {
  const RestaurantDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              spacing: 15,
              children: [
                Image.asset(
                  Assets.restaurant2,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 3,
                  fit: BoxFit.cover,
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RestaurantNameAndRating(),
                      RestaurantLocationDetails(),
                      SizedBox(height: 20,),
                      RestaurantDescription(
                        text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi",
                      ),
                      SizedBox(height: 20,),
                      RestaurantFacilities(),
                      SizedBox(height: 20,),
                      TitleOfList(title: S.of(context).best_offers, onPressed: () {  },),
                      SizedBox(height: 10,),
                      ListOfFoods(),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 33.0,vertical: 35),
            child: DefaultButton(onPressed: () {
              GoRouter.of(context).push(ReserveTableView.rn);
            }, backgroundColor: AppColors.green, text: S.of(context).view_available_tables,textColor: AppColors.white,),
          )
        ],
      ),
    );
  }
}



