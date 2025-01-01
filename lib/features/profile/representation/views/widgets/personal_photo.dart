import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/core/utils/customs/colors.dart';
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
class PersonalPhoto extends StatelessWidget {
  const PersonalPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TweenAnimationBuilder(
          duration: Duration(milliseconds: 1000),
          tween: Tween(begin: 0,end: 3.14*2),
          builder:(context, value, child) =>  Transform.rotate(
            angle: value.toDouble(),
            child: AvatarGlow(
              startDelay: const Duration(milliseconds: 1000),
              glowColor: AppColors.green,
              glowShape: BoxShape.circle,
              animate: true,
              curve: Curves.fastOutSlowIn,
              child: const Material(
                elevation: 1.0,
                shape: CircleBorder(),
                color: Colors.transparent,
                child: CircleAvatar(
                  backgroundImage: AssetImage(Assets.person),
                  radius: 50.0,
                ),
              ),
            ),
          ),
        ),
      ]
    );
  }
}
