import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/foods/representation/views/widgets/food_component_item.dart';
import 'package:flutter/material.dart';
class FoodComponentDetails extends StatelessWidget {
  const FoodComponentDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          constraints: BoxConstraints(
              maxWidth: (MediaQuery.of(context).size.width/3)*3
          ),
          child: Text(
            "Nulla occaecat velit laborum exercitation ullamco. Elit labore eu aute elit nostrud culpa velit excepteur deserunt sunt. Velit non est cillum consequat cupidatat ex Lorem laboris labore aliqua ad duis eu laborum.",
            softWrap: true,
            style: Styles.head14w400.copyWith(color: Colors.grey,height: 1.8),
          ),
        ),
        SizedBox(height: 10,),
        foodComponentItem(text: "'Tomato",),
        foodComponentItem(text: "'Chicken",),
        foodComponentItem(text: "'Lettuce",),
      ],
    );
  }
}

