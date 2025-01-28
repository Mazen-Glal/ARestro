import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsItem extends StatelessWidget {
  const SettingsItem({
    super.key,
    required this.texts,
    required this.index,
  });

  final int index;
  final List<String> texts;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(texts[index]),
      titleTextStyle: Styles.head14w400,
      onTap: () {
        switch(index){
          case 0:
            // GoRouter.of(context).go(location);
            break;
          case 1:
            // GoRouter.of(context).go(location);
            break;
          case 2:
            // GoRouter.of(context).go(location);
            break;
          case 3:
            // GoRouter.of(context).go(location);
            break;
          case 4:
            // GoRouter.of(context).go(location);
            break;
          default:
        }
      },
      contentPadding: EdgeInsetsDirectional.only(
        start: 30,
      ),
      dense: true,
      visualDensity: VisualDensity.compact,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: AppColors.green)),
    );
  }
}
