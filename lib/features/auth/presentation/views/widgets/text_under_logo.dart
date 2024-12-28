import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class TextUnderLogo extends StatelessWidget {
  const TextUnderLogo({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
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
          style:Styles.head36w700,
        ),

      ]
    );
  }
}
