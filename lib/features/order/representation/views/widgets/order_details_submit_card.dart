import 'package:arestro/core/utils/components/default_button.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/order/representation/views/thank_you_view.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_submit_card.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_submit_card_text.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderDetailsSubmitCard extends StatelessWidget {
  const OrderDetailsSubmitCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          Assets.Rectangle,
          width: double.infinity,
        ),
        Image.asset(
          Assets.Pattern,
          width: double.infinity,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            spacing: 5,
            children: [
              OrderDetailsSubmitCardText(
                title: S.of(context).sub_total,
                value: "950",
              ),
              OrderDetailsSubmitCardText(
                title: S.of(context).delivery_charge,
                value: "50",
              ),
              OrderDetailsSubmitCardText(
                title: S.of(context).discount,
                value: "0",
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text(S.of(context).total,style: Styles.head18w800.copyWith(color: AppColors.white),),
                  Spacer(),
                  Text("Rs 1,000",style: Styles.head18w800.copyWith(color: AppColors.white),),
                ],
              ),
              DefaultButton(
                onPressed:(){
                  GoRouter.of(context).go(ThankYouView.rn);
                },
                backgroundColor:AppColors.white,
                textColor:AppColors.greenBlack,
                text:S.of(context).place_my_order
              ),
            ],
          ),
        )
      ],
    );
  }
}

