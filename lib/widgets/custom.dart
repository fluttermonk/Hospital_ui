import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:new_task_again/screens/BookAppointment.dart';

import '../colors/customcolor.dart';

class InputField extends StatelessWidget {
  InputField({
    Key? key,
    this.labelText,
    required this.hintText,
    this.prefix,
    this.suffix,
    this.controller,
    this.enable = false,
    this.data,
    this.obscureText = false,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.next,
    this.textCapitalization = TextCapitalization.none,
    this.maxLength = 100,
    this.maxLine = 1,
    this.showCounter = false,
    this.onTap,
    this.validator, required TextInputType keyboardType,
  }) : super(key: key);

  final String? labelText;
  final String hintText;
  final Widget? prefix;
  final Widget? suffix;
  final GestureTapCallback? onTap;
  final TextEditingController? controller;
  final String? data;
  final bool enable;
  final bool obscureText;
  final TextInputType textInputType;
  final TextInputAction textInputAction;
  final TextCapitalization textCapitalization;
  final int maxLength;
  final int maxLine;
  final bool showCounter;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
    onTap: onTap,
      maxLength: maxLength,
      maxLines: maxLine,

      readOnly: enable,
      obscureText: obscureText,
      cursorColor: Colors.black,
      style: TextStyle(
        decoration: TextDecoration.none,
        fontFamily: 'Roboto',
        color: Colors.black,
        fontWeight: FontWeight.w400,
        fontSize: 14.sp,
      ),
      controller: controller,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      textCapitalization: textCapitalization,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: ColorConstantsLight.borderColor,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 12.h),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: BorderSide(
            color: ColorConstantsLight.borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: BorderSide(
            color: ColorConstantsLight.borderColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: BorderSide(
            color: ColorConstantsLight.redColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.r)),
          borderSide: BorderSide(
            color: ColorConstantsLight.redColor,
          ),
        ),
        suffixIcon: suffix,
        counterText: showCounter ? null : '',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return '$data cannot be empty';
        }
        if (data == 'mobile') {
          if (value.length < 10) {
            return "Invalid mobile number";
          }
          return null;
        }
        if (data == 'pin') {
          if (value.length < 6) {
            return "Invalid pin code";
          }
          return null;
        }
        return null;
      },
    );
  }

  final String? Function(String?)? validator;
}