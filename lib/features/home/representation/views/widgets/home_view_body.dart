import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/features/foods/representation/views/widgets/food_details_view_body_item.dart';
import 'package:arestro/features/home/representation/views/widgets/home_view_body_item.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_view_body_item.dart';
import 'package:arestro/features/search/representation/views/widgets/search_view_body_item.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatefulWidget {
  HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final List<Widget> widgets = [
    HomeViewBodyItem(),
    SearchViewBodyItem(),
    OrderDetailsViewBodyItem()
  ];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      drawer: DrawerWidget(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: S.of(context).home, icon: Icon(Icons.house)),
          BottomNavigationBarItem(
              label: S.of(context).search, icon: Icon(Icons.search)),
          BottomNavigationBarItem(
              label: S.of(context).cart, icon: Icon(Icons.shopping_cart_sharp)),
        ],
        onTap: (value) {
            currentIndex = value;
          setState(() {});
        },
        currentIndex: currentIndex,
        selectedItemColor: AppColors.green,
        backgroundColor: AppColors.white,
      ),
      body: widgets[currentIndex],
    );
  }
}
