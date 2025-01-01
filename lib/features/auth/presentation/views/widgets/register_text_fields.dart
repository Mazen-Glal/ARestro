import 'package:arestro/core/utils/components/default_text_form_field.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class RegisterTextFields extends StatelessWidget {
  const RegisterTextFields({
    super.key,
    required this.emailController,
    required this.passwordController, required this.usernameController, required this.phoneController,
  });

  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController phoneController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 20,
      children: [
        DefaultTextFormField(
          controller: usernameController,
          hintText: S.of(context).enter_your_username,
          keyboardType: TextInputType.text,
        ),
        DefaultTextFormField(
          controller: emailController,
          hintText: S.of(context).email_example,
          keyboardType: TextInputType.emailAddress,
        ),
        DefaultTextFormField(
          controller: phoneController,
          hintText: S.of(context).enter_phone,
          keyboardType: TextInputType.phone,
        ),
        DefaultTextFormField(
          controller: passwordController,
          hintText: S.of(context).enter_pass,
          keyboardType: TextInputType.visiblePassword,
          showObscureSuffix: true,
          obscureText: true,
        ),
      ],
    );
  }
}
