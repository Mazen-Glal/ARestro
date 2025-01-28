import 'package:arestro/features/search/representation/views/widgets/list_of_search_results.dart';
import 'package:arestro/features/search/representation/views/widgets/search_textField_button.dart';
import 'package:flutter/material.dart';
class SearchViewBodyItem extends StatelessWidget {
  const SearchViewBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
