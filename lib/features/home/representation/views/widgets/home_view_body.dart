import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/home/representation/views/widgets/home_search_item.dart';
import 'package:arestro/features/home/representation/views/widgets/list_of_foods.dart';
import 'package:arestro/features/home/representation/views/widgets/list_of_food_item.dart';
import 'package:arestro/features/home/representation/views/widgets/offer_for_month.dart';
import 'package:arestro/features/home/representation/views/widgets/title_of_list.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/list_of_restaurants.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: SafeArea(
          child: Column(
            spacing: 15,
            children: [
              OfferForMonth(),
              HomeSearchItem(searchController: searchController),
              TitleOfList(
                title: S.of(context).best_offers,
                onPressed: () {},
              ),
              ListOfFoods(),
              TitleOfList(
                title: S.of(context).restaurants_nearby,
                onPressed: () {},
              ),
              ListOfRestaurants()
            ],
          ),
        ),
      ),
    );
  }
}
