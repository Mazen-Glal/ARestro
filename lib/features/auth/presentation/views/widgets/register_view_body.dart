import 'package:arestro/features/auth/presentation/views/login_view.dart';
import 'package:arestro/features/auth/presentation/views/widgets/register_text_fields.dart';
import'package:flutter/material.dart';
import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/auth/presentation/views/widgets/or_continue_with.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_and_text_button.dart';
import 'package:arestro/features/auth/presentation/views/widgets/text_under_logo.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
class RegisterViewBody extends StatelessWidget {
  RegisterViewBody({super.key});
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
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
                text: S.of(context).create_an_account,
                textStyle: Styles.head24w700,
              ),
              SizedBox(
                height: 15,
              ),
              RegisterTextFields(
                emailController: emailController,
                passwordController: passwordController,
                usernameController:usernameController,
                phoneController:phoneController,
              ),
              SizedBox(
                height: 10,
              ),
              DefaultButton(
                onPressed: () {},
                backgroundColor: AppColors.green,
                text: S.of(context).sign_up,
              ),
              SizedBox(
                height: 25,
              ),
              OrContinueWith(),
              SizedBox(
                height: 15,
              ),
              DefaultButton(
                onPressed: () {},
                backgroundColor: Colors.transparent,
                text: S.of(context).signup_with_google,
                textColor: AppColors.halfBlack,
                textStyle: Styles.head14w500.copyWith(
                  color: AppColors.halfBlack,
                ),
                // prefixIcon:Icon(FontAwesomeIcons.google,color:AppColors.green,)
                prefixIcon: SvgPicture.asset(
                  Assets.googleLogo,
                  width: 30,
                  height: 30,
                  alignment: Alignment.center,
                  fit:BoxFit.cover,
                ),
              ),
              TextAndTextButton(
                text: S.of(context).already_have_account,
                textButton: S.of(context).log_in,
                onPressed:() {
                  GoRouter.of(context).push(LoginView.rn);
                },
              )
            ],
          ),
        ),
      ),
    );
  }

}
