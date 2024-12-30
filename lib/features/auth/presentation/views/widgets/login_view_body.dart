import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/auth/presentation/views/register_view.dart';
import 'package:arestro/features/auth/presentation/views/widgets/login_text_fields.dart';
import 'package:arestro/features/auth/presentation/views/widgets/or_continue_with.dart';
import 'package:arestro/features/auth/presentation/views/widgets/remember_forget_pass.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_and_text_button.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_under_logo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
class LoginViewBody extends StatelessWidget {
   LoginViewBody({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextUnderLogo(
                text: S.of(context).log_in,
                textStyle: Styles.head24w700,
              ),
              LoginTextFields(
                emailController: emailController,
                passwordController: passwordController,
              ),
              RememberAndForgetPass(),
              SizedBox(
                height: 10,
              ),
              DefaultButton(
                onPressed: () {},
                backgroundColor: AppColors.green,
                text: S.of(context).log_in,
              ),
              SizedBox(
                height: 40,
              ),
              OrContinueWith(),
              SizedBox(
                height: 15,
              ),
              DefaultButton(
                onPressed: () {},
                backgroundColor: Colors.transparent,
                text: S.of(context).login_with_google,
                textColor: AppColors.halfBlack,
                textStyle: Styles.head14w500.copyWith(
                  color: AppColors.halfBlack,
                ),
                prefixIcon:Icon(FontAwesomeIcons.google,color:AppColors.green,)
                // prefixIcon: SvgPicture.asset(
                //   Assets.googleLogo,
                //   width: 30,
                //   height: 30,
                //   alignment: Alignment.center,
                //   fit:BoxFit.cover,
                // ),
              ),
              TextAndTextButton(
                text: S.of(context).do_not_have_account,
                textButton: S.of(context).sign_up,
                onPressed:() {
                  GoRouter.of(context).push(RegisterView.rn);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
