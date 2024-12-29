import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class LoginTextFields extends StatelessWidget {
  const LoginTextFields({
    super.key,
    required this.emailController,
    required this.passwordController,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 5.0),
              child: Text(
                S.of(context).email,
                style: Styles.head14w500,
              ),
            ),
            DefaultTextFormField(
              controller: emailController,
              hintText: S.of(context).email_example,
              keyboardType: TextInputType.emailAddress,
            )
          ],
        ),
        SizedBox(height: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5.0,right: 5.0),
              child: Text(
                S.of(context).password,
                style: Styles.head14w500,
              ),
            ),
            DefaultTextFormField(
              controller: passwordController,
              hintText: S.of(context).enter_pass,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              showSuffix: true,
            )
          ],
        ),
      ],
    );
  }
}
