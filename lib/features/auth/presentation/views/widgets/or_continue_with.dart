import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
class OrContinueWith extends StatelessWidget {
  const OrContinueWith({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DashLine(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
          child: Text(S.of(context).or_continue_with,),
        ),
        DashLine(),
      ],
    );
  }
}

class DashLine extends StatelessWidget {
  const DashLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 1,
        color: AppColors.halfBlack,
      ),
    );
  }
}

