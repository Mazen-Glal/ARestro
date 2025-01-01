import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class TitleOfList extends StatelessWidget {
  const TitleOfList({super.key, required this.title, required this.onPressed});

  final String title;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 8.0),
      child: Row(
        children: [
          Text(
            title,
            style: Styles.head20w700,
          ),
          Spacer(),
          TextButton(
            onPressed: onPressed,
            child: Text(
              S.of(context).see_all,
              style: Styles.head12w600.copyWith(color: AppColors.green),
            ),
          )
        ],
      ),
    );
  }
}
