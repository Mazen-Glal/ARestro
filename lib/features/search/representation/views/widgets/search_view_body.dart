import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/drawer_widget.dart';
import 'package:arestro/features/search/representation/views/widgets/list_of_search_results.dart';
import 'package:arestro/features/search/representation/views/widgets/search_textField_button.dart';
import 'package:flutter/material.dart';
class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer:DrawerWidget(),
      backgroundColor: AppColors.white,
      appBar: getDefaultAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SearchTextFieldAndButton(),
            SizedBox(height: 20,),
            ListOfSearchResults(),
          ],
        ),
      ),
    );
  }
}
