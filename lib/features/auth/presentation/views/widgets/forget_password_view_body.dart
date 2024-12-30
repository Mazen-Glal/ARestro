import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/auth/presentation/views/reset_password_view.dart';
import 'package:arestro/features/auth/presentation/views/widgets/description_of_screen.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_under_logo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordViewBody extends StatelessWidget {
  ForgetPasswordViewBody({super.key});

  final TextEditingController emailController = TextEditingController();
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
                text: S.of(context).forget_password,
                textStyle: Styles.head24w700,
              ),
              DescriptionOfScreen(text: S.of(context).description_forget_pass,),
              SizedBox(height: 10),
              DefaultTextFormField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                hintText: S.of(context).enter_email,
              ),
              // SizedBox(height: 1),
              DefaultButton(
                text: S.of(context).send_code,
                onPressed: () {
                  GoRouter.of(context).push(ResetPasswordView.rn);
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
