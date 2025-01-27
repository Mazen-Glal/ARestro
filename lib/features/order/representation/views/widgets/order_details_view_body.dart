import 'package:arestro/core/utils/components/default_app_bar.dart';
import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_item.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_item_text.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_submit_card.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_view_body.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';

class OrderDetailsViewBody extends StatefulWidget {
   OrderDetailsViewBody({super.key});

  @override
  State<OrderDetailsViewBody> createState() => _OrderDetailsViewBodyState();
}

class _OrderDetailsViewBodyState extends State<OrderDetailsViewBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.98),
      appBar: getDefaultAppBar(context),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          spacing: 10,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    S.of(context).order_details,
                    style: Styles.head24w700,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    separatorBuilder:(context,index)=> SizedBox(height:15),
                    itemBuilder:(context,index){
                      return OrderDetailsItem();
                    },
                    itemCount:3,
                  ),
                ],
              ),
            ),
            OrderDetailsSubmitCard()
          ],
        ),
      ),
    );
  }
}
