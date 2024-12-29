import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/auth/presentation/views/forget_password_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class RememberAndForgetPass extends StatefulWidget {
  const RememberAndForgetPass({super.key});

  @override
  State<RememberAndForgetPass> createState() => _RememberAndForgetPassState();
}

class _RememberAndForgetPassState extends State<RememberAndForgetPass> {
  bool checkBox = false;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Checkbox(
          value: checkBox,
          onChanged: (value) {
            checkBox = !checkBox;
            setState((){});
          },
          fillColor: WidgetStatePropertyAll(Colors.transparent),
          checkColor: AppColors.black,
          side: BorderSide(
              width: 1, color: AppColors.halfBlack.withOpacity(0.3)),
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        ),
        Text(
          S.of(context).remember_me,
          style: Styles.head14w500,
        ),
        Spacer(),
        TextButton(
            onPressed: () {
              GoRouter.of(context).push(ForgetPasswordView.rn);
            },
            child: Text(
              S.of(context).forget_pass,
              style: Styles.head14w500
                  .copyWith(color: Colors.red.withOpacity(0.8)),
            )),
      ],
    );
  }
}
