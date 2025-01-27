import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/features/order/representation/views/widgets/order_details_item_text.dart';
import 'package:flutter/material.dart';
class OrderDetailsItem extends StatefulWidget {
  OrderDetailsItem({super.key});

  @override
  State<OrderDetailsItem> createState() => _OrderDetailsItemState();
}

class _OrderDetailsItemState extends State<OrderDetailsItem> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.white,
      elevation: 0,
      child: Padding(
        padding:  EdgeInsets.all(10.0),
        child: Row(
          children: [
            ClipRRect(
              child: Image.asset(
                Assets.food3,
                width: 64,
                height: 64,
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                OrderDetailsItemText(
                  text: "Chicken Burger",
                  style: Styles.head14w500,
                ),
                OrderDetailsItemText(
                  text: "Burger Factory LTD",
                  style: Styles.head14w500.copyWith(color: Colors.grey),
                ),
                OrderDetailsItemText(
                  text: "Rs 200",
                  style: Styles.head19w700
                      .copyWith(color: AppColors.greenBlack),
                ),
              ],
            ),
            Spacer(),
            Row(
              spacing: 10,
              children: [
                GestureDetector(
                  child: Icon(
                    Icons.indeterminate_check_box_rounded,
                    color: Colors.grey,
                    size: 30,
                  ),
                  onTap: () {
                    if(count != 0){
                      count--;
                      setState(() {});
                    }
                  },
                ),
                Text(
                  "$count",
                  style: Styles.head16w500.copyWith(color: AppColors.greenBlack),
                ),
                GestureDetector(
                  child: Icon(
                    Icons.add_box_rounded,
                    color: AppColors.greenBlack,
                    size: 30,
                  ),
                  onTap: () {
                    count++;
                    setState((){});
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
