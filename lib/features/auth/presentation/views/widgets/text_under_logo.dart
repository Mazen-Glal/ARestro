import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TextUnderLogo extends StatelessWidget {
  const TextUnderLogo({super.key, required this.text,  this.textStyle});

  final String text;
  final TextStyle? textStyle;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing:25,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:[
        SvgPicture.asset(
          Assets.logoWithoutName,
          placeholderBuilder: (context) => CircularProgressIndicator(
            color: AppColors.green,
            value: 50,
            strokeCap: StrokeCap.square,
            strokeWidth: 5.0,
          ),
          alignment: Alignment.center,
          fit: BoxFit.cover,
        ),
        Text(
          text,
          style:textStyle??Styles.head36w700,
        ),
      ]
    );
  }
}
