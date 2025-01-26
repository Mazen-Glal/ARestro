import 'package:arestro/features/restaurants/representation/views/widgets/list_of_restaurant_item.dart';
import 'package:flutter/material.dart';
class ListOfRestaurants extends StatelessWidget {
  const ListOfRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxHeight: 185
      ),
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) =>ListOfRestaurantItem(),
              separatorBuilder: (context, index) => SizedBox(width: 10),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ],
      ),
    );
  }
}
