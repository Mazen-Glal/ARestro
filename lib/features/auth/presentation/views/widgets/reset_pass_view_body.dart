import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/auth/presentation/views/pass_change_view.dart';
import 'package:arestro/features/auth/presentation/views/widgets/description_of_screen.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_under_logo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ResetPasswordViewBody extends StatelessWidget {
  ResetPasswordViewBody({super.key});

  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController repeatPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 10,horizontal: 30),
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextUnderLogo(
                text: S.of(context).reset_pass,
                textStyle: Styles.head24w700,
              ),
              DescriptionOfScreen(text: S.of(context).description_reset_pass),
              SizedBox(height: 10),
              DefaultTextFormField(
                controller: newPasswordController,
                keyboardType: TextInputType.emailAddress,
                hintText: S.of(context).enter_new_pass,
              ),
              DefaultTextFormField(
                controller: repeatPasswordController,
                keyboardType: TextInputType.emailAddress,
                hintText: S.of(context).repeat_new_pass,
              ),
              // SizedBox(height: 1),
              DefaultButton(
                text: S.of(context).reset_pass,
                onPressed: () {
                  GoRouter.of(context).push(PasswordChangeView.rn);
                },
                backgroundColor: AppColors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

}
