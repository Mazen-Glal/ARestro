import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/features/search/representation/views/widgets/search_view_body_item.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      body: SearchViewBodyItem(),
    );
  }
}
