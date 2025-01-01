import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/profile/representation/views/widgets/personal_info.dart';
import 'package:arestro/features/profile/representation/views/widgets/profile_row_text.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key});

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
                Text(S.of(context).contact_info, style: Styles.head16w800),
                Spacer()
              ],
            ),
            ProfileRowText(
              text: "01129547302",
              title: S.of(context).phone_number,
            ),
            ProfileRowText(
              text: "mazenglal19@gmail.com",
              title: S.of(context).email,
            )
          ],
        ),
      ),
    );
  }
}
