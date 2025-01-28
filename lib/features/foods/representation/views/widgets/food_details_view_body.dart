import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/features/foods/representation/views/widgets/food_details_view_body_item.dart';
import 'package:flutter/material.dart';
class FoodDetailsViewBody extends StatelessWidget {
  const FoodDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      drawer:DrawerWidget(),
      body: FoodDetailsViewBodyItem(),
    );
  }
}



