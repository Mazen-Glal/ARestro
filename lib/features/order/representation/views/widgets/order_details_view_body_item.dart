import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_item.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_submit_card.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class OrderDetailsViewBodyItem extends StatelessWidget {
  const OrderDetailsViewBodyItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
    );
  }
}
