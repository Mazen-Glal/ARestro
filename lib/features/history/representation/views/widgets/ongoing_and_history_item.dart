import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/components/default_lisTile.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';import 'package:flutter/material.dart';
class OngoingAndHistoryItem extends StatelessWidget {
  const OngoingAndHistoryItem({
    super.key, required this.title, required this.subTitle, required this.itemsCount, required this.onTap1Text, required this.onTap2Text, this.onTap1, this.onTap2,
  });

  final String title;
  final String subTitle;
  final int itemsCount;
  final String onTap1Text;
  final String onTap2Text;
  final void Function()? onTap1;
  final void Function()? onTap2;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 40,
              child: Image.asset(Assets.restaurantImage,fit: BoxFit.cover,),
            ),
            Expanded(
              child: getDefaultListTile(
                contentPadding: EdgeInsets.zero,
                title: Text(
                  title,
                  style: Styles.head18w400.copyWith(
                      color: AppColors.greenBlack, fontWeight: FontWeight.w500),
                ),
                subTitle: Row(
                  spacing: 10,
                  children: [
                    Text(
                      subTitle,
                      style: Styles.head14w700.copyWith(color: AppColors.greenBlack),
                    ),
                    Text(
                      "| ${itemsCount} ${S.of(context).items}",
                      style: Styles.head12w500.copyWith(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Row(
          spacing: 30,
          children: [
            Expanded(
              child: DefaultButton(
                onPressed: onTap1,
                text: onTap1Text,
                backgroundColor: AppColors.green,
                textColor: AppColors.white,
              ),
            ),
            Expanded(
              child: DefaultButton(
                onPressed: onTap2,
                text: onTap2Text,
                backgroundColor: AppColors.white,
                textColor: AppColors.green,
              ),
            )
          ],
        )
      ],
    );
  }
}
