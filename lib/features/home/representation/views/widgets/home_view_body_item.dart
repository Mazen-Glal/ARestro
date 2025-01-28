import 'package:arestro/features/home/representation/views/widgets/offer_for_month.dart';
import 'package:arestro/features/foods/representation/views/widgets/list_of_foods.dart';
import 'package:arestro/features/home/representation/views/widgets/title_of_list.dart';
import 'package:arestro/features/restaurants/representation/views/widgets/list_of_restaurants.dart';
import 'package:arestro/features/search/representation/views/widgets/home_search_item.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class HomeViewBodyItem extends StatelessWidget {
   HomeViewBodyItem({super.key});
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
