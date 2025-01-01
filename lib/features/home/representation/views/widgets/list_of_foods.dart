import 'package:arestro/features/home/representation/views/widgets/list_of_food_item.dart';
import 'package:flutter/material.dart';

class ListOfFoods extends StatelessWidget {
  const ListOfFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 280,
      child: Row(
        children: [
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => ListOfFoodItem(
                index: index,
              ),
              separatorBuilder: (context, index) => SizedBox(width: 0),
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              // padding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
        ],
      ),
    );
  }
}
