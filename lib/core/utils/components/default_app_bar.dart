import 'package:arestro/core/utils/customs/assets.dart';
import 'package:arestro/features/profile/representation/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

AppBar getDefaultAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    centerTitle: true,
    elevation: 0,
    title: SvgPicture.asset(
      Assets.nameLogoBlack,
      width: MediaQuery.of(context).size.width/3,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: GestureDetector(
          onTap: () {
            GoRouter.of(context).push(ProfileView.rn);
          },
          child: CircleAvatar(
            // backgroundImage: NetworkImage("url"),
            radius: 17,
            backgroundImage: AssetImage(Assets.person),
          ),
        ),
      )
    ],
    leading: Icon(Icons.menu),
  );
}
