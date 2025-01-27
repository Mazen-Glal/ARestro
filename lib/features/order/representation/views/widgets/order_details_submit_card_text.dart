import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
class OrderDetailsSubmitCardText extends StatelessWidget {
  const OrderDetailsSubmitCardText({
    super.key, required this.title, required this.value,
  });

  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Styles.head14w500.copyWith(color: AppColors.white.withOpacity(0.8)),),
        Spacer(),
        Text("Rs$value",style: Styles.head14w500.copyWith(color: AppColors.white.withOpacity(0.8)),),
      ],
    );
  }
}
