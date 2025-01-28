  import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

customShowDialog({
  required BuildContext context,
  required DialogType dialogType,
  required AnimType animType,
  String? title,
  Widget? body,
  void Function()? cancel,
  void Function()? ok,
  String? description,
  Widget? cancelWidget,
  Widget? okWidget,
  String? okText,
  String? cancelText,
  IconData? okIcon,
  IconData? cancelIcon,
}){
  return AwesomeDialog(
      context: context,
      dialogType: dialogType,
      animType: animType,
      showCloseIcon: true,
      title: title,
      titleTextStyle: Styles.head24w700.copyWith(color: Colors.white),
      body: body,
      desc: description,
      descTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 15,
        color: AppColors.green,
      ),
      btnOkText: okText,
      btnCancelText: cancelText,
      btnCancelIcon: cancelIcon,
      btnOkIcon:okIcon,
      padding: const EdgeInsets.all(0),
      buttonsTextStyle: TextStyle(color: AppColors.greenWhite,),
      autoDismiss: true,
      closeIcon: Icon(Icons.close,color: AppColors.greenBlack,),
      btnCancel: cancelWidget,
      btnOk: okWidget,
      btnOkColor: AppColors.greenBlack,
      btnCancelOnPress: cancel,
      btnOkOnPress: ok,
      dialogBackgroundColor: AppColors.greenWhite
  ).show();
}
