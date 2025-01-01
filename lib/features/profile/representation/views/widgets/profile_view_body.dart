import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/features/profile/representation/views/widgets/contact_info.dart';
import 'package:arestro/features/profile/representation/views/widgets/personal_info.dart';
import 'package:arestro/features/profile/representation/views/widgets/personal_photo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.symmetric(vertical: 20,horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              PersonalPhoto(),
              SizedBox(height: 25),
              PersonalInfo(),
              ContactInfo(),
              SizedBox(height: 25),
              DefaultButton(
                backgroundColor: AppColors.green,
                textColor: AppColors.white,
                text: S.of(context).edit,
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
