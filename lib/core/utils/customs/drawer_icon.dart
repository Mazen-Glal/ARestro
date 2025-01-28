import 'package:arestro/core/utils/customs/colors.dart';
import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerIcon extends StatelessWidget {
  const DrawerIcon({
    super.key, required this.scaffoldKey,
  });

  final GlobalKey<ScaffoldState> scaffoldKey;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            // scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsetsDirectional.only(start: 25.0),
            child: Icon(FontAwesomeIcons.bars,color:AppColors.greenBlack,size: 20,),
          ),
          // child: Container(
          //   margin: const EdgeInsets.symmetric(horizontal: 10),
          //   padding: const EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(10),
          //     color: AppColors.green,
          //   ),
          //   child: Icon(FontAwesomeIcons.bars,color:AppColors.white,size: 10,),
          // ),
        )
      ],
    );
  }
}