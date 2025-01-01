import 'package:arestro/core/utils/customs/colors.dart';
import 'package:arestro/core/utils/customs/styles.dart';
import 'package:arestro/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DefaultTextFormField extends StatefulWidget {
   DefaultTextFormField(
      {super.key,
      required this.controller,
      this.hintText,
      this.labelText,
      this.keyboardType,
      this.obscureText,
      this.onTap,
      this.onChanged,
      this.onFieldSubmitted,
        this.showObscureSuffix,
        this.prefixIcon, this.readOnly, this.enabled, this.suffixIcon
      });

  final void Function()? onTap;
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final TextEditingController controller;
  final String? hintText;
  final String? labelText;
  final TextInputType? keyboardType;
  bool? obscureText =false;
  final bool? showObscureSuffix;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final bool? readOnly;
  final bool? enabled;
  @override
  State<DefaultTextFormField> createState() => _DefaultTextFormFieldState();
}

class _DefaultTextFormFieldState extends State<DefaultTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: widget.enabled,
      readOnly: widget.readOnly??false,
      obscureText: widget.obscureText ?? false,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'value must be not empty';
        } else {
          return null;
        }
      },
      // controller: ,
      decoration: InputDecoration(
        prefixIcon:widget.prefixIcon != null ? Icon(widget.prefixIcon,size: 15,):null,
        contentPadding: EdgeInsets.symmetric(horizontal: 13),
        hintStyle: Styles.head14w500.copyWith(color: AppColors.halfBlack,decoration: TextDecoration.none),
        labelStyle: Styles.head16w400.copyWith(color: AppColors.halfBlack,decoration: TextDecoration.none),
        hintText: widget.hintText,
        labelText: widget.labelText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.halfBlack.withOpacity(0.5),
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.halfBlack.withOpacity(0.5),
            width: 1,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.halfBlack.withOpacity(0.5),
            width: 1,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
            width: 0.5,
          ),
        ),
        suffixIcon:widget.suffixIcon != null ? Icon(widget.suffixIcon,size: 15,): widget.showObscureSuffix == true? IconButton(
          icon: Icon(
            widget.obscureText == true ? FontAwesomeIcons.eye: FontAwesomeIcons.eyeSlash,
          ),
          style: ButtonStyle(
            iconSize: WidgetStatePropertyAll(18)
          ),
          onPressed: () {
            setState(() {
              widget.obscureText = !widget.obscureText!;
            });
          },
        ) : null,
      ),
      cursorColor: AppColors.green,
      onTap: widget.onTap,
      onChanged: widget.onChanged,
      onFieldSubmitted: widget.onFieldSubmitted,
    );
  }
}
