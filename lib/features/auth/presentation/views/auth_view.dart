import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/features/auth/presentation/views/login_view.dart';
import 'package:arestro/features/auth/presentation/views/register_view.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_under_logo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  static const String rn = '/AuthView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          spacing: 5,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            TextUnderLogo(text: 'ARestro'),
            SizedBox(
              height:MediaQuery.of(context).size.height/5,
            ),
            DefaultButton(
              backgroundColor: AppColors.green,
              text: S.of(context).log_in,
              onPressed: () {
                GoRouter.of(context).push(LoginView.rn);
              },
            ),
            DefaultButton(
              textColor: AppColors.halfBlack,
              backgroundColor: Colors.transparent,
              text: S.of(context).sign_up,
              onPressed: () {
                GoRouter.of(context).push(RegisterView.rn);
              },
            ),
          ],
        ),
      ),
    );
  }
}
