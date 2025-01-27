import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
class foodComponentItem extends StatelessWidget {
  const foodComponentItem({
    super.key, required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.chevron_right_outlined,color: AppColors.green,),
        Text(text,style: Styles.head14w400.copyWith(color: Colors.grey),)
      ],
    );
  }
}
