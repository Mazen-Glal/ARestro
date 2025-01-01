import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/profile/representation/views/widgets/personal_info.dart';
import 'package:arestro/features/profile/representation/views/widgets/profile_row_text.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.7,
      shadowColor: AppColors.halfBlack,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(S.of(context).personal_info, style: Styles.head16w800),
                Spacer()
              ],
            ),
            ProfileRowText(
              title: S.of(context).your_name,
              text: "Mazen Glal",
            ),
            ProfileRowText(
              title: S.of(context).occupation,
              text: "Student",
            ),
            ProfileRowText(
              title: S.of(context).address,
              text: "Koteshwor.Kathmandu",
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).member,
                    style:
                        Styles.head14w500.copyWith(color: AppColors.halfBlack),
                  ),
                  Spacer(),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 0, end: 3.14*2),
                    duration: Duration(milliseconds: 1000),
                    builder: (context, value, child) => Transform.rotate(
                      angle: value.toDouble(),
                      child: SizedBox(
                        height: 20,
                        child: Switch(
                          value: true,
                          splashRadius: 0,
                          trackOutlineWidth: WidgetStatePropertyAll(0),
                          activeColor: AppColors.white,
                          activeTrackColor: AppColors.green,
                          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          onChanged: (value) {},
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
