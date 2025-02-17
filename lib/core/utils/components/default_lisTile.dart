import 'package:flutter/material.dart';


   ListTile getDefaultListTile({
    Widget? title,
    Widget? leading,
    Widget? trailing,
    Widget? subTitle,
    double? horizontalTitleGap,
    void Function()? onTap,
     EdgeInsetsGeometry? contentPadding
  }){
    return ListTile(
      trailing: trailing,
      horizontalTitleGap: horizontalTitleGap,
      title:title,
      titleTextStyle: const TextStyle(fontSize: 15,color: Colors.black),
      subtitle: subTitle,
      leading: leading,
      onTap: onTap,
      contentPadding: contentPadding,
      dense: true,
      // visualDensity: VisualDensity.compact,

    );
  }
