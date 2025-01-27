import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/features/home/representation/views/home_view.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class ThankYouButtons extends StatelessWidget {
  const ThankYouButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        children:[
          Expanded(
            flex: 2,
            child: DefaultButton(
                text:S.of(context).submit,
                textColor:AppColors.white,
                backgroundColor:AppColors.green,
                onPressed:(){
                  GoRouter.of(context).go(HomeView.rn);
                }
            ),
          ),
          SizedBox(width:10),
          Expanded(
            child: DefaultButton(
                text:S.of(context).skip,
                textColor:AppColors.greenBlack,
                backgroundColor:AppColors.white,
                onPressed:(){
                  GoRouter.of(context).go(HomeView.rn);
                }
            ),
          ),
        ]
    );
  }
}
