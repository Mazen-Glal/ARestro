import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class FacilitiesItem extends StatelessWidget {
  const FacilitiesItem({
    super.key,
    required this.text, this.textTextStyle
  });
  final TextStyle? textTextStyle;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(FontAwesomeIcons.check,size: 15,color: AppColors.green,),
        SizedBox(width: 5,),
        Text(text,style:textTextStyle?? Styles.head12w500,)
      ],
    );
  }
}
