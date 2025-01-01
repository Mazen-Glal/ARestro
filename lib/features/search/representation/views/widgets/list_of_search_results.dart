import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/search/representation/views/widgets/restaurant_item_for_search.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class ListOfSearchResults extends StatelessWidget {
  const ListOfSearchResults({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          S.of(context).popular_restaurants,
          style: Styles.head20w700,
        ),
        ListView.separated(
          itemBuilder: (context, index) => RestaurantItemForSearch(),
          separatorBuilder: (context, index) => SizedBox(height: 10),
          itemCount: 10,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
        ),
      ],
    );
  }
}
