import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SearchTextFieldAndButton extends StatelessWidget {
  SearchTextFieldAndButton({super.key});

  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          S.of(context).find_restaurant_nearby,
          style: Styles.head16w600.copyWith(
            color: AppColors.black,
          ),
        ),
        SizedBox(
          height: 40,
          child: DefaultTextFormField(
            controller: searchController,
            prefixIcon: FontAwesomeIcons.magnifyingGlass,
            hintText: S.of(context).search_for_food_restaurants,
            onChanged: (p0) {},
          ),
        ),
        SizedBox(
          height: 36,
          child: DefaultButton(
            onPressed: () {},
            backgroundColor: AppColors.green,
            text: S.of(context).search,
            textColor: AppColors.white,
          ),
        )
      ],
    );
  }
}
