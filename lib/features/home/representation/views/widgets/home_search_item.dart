import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/features/search/representation/views/search_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
class HomeSearchItem extends StatelessWidget {
  const HomeSearchItem({super.key, required this.searchController});

  final TextEditingController searchController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      child: DefaultTextFormField(
        controller: searchController,
        hintText: S.of(context).search_for_food_restaurants,
        prefixIcon: FontAwesomeIcons.magnifyingGlass,
        onTap: (){
          GoRouter.of(context).push(SearchView.rn);
        },
        readOnly: true,
      ),
    );
  }
}
