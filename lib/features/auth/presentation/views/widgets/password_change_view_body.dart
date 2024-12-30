import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/auth/presentation/views/auth_view.dart';
import 'package:arestro/features/auth/presentation/views/login_view.dart';
import 'package:arestro/features/auth/presentation/views/pass_change_view.dart';
import 'package:arestro/features/auth/presentation/views/widgets/description_of_screen.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_under_logo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class PasswordChangeViewBody extends StatelessWidget {
  const PasswordChangeViewBody({super.key});

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
                text: S.of(context).pass_changed,
                textStyle: Styles.head24w700,
              ),
              DescriptionOfScreen(text: S.of(context).description_pass_changed),
              DefaultButton(
                text: S.of(context).back_to_login,
                onPressed: () {
                  GoRouter.of(context).go(LoginView.rn);
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
