// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../app_Colors.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    required this.onTap,
    this.borderRadius,
    this.buttonColor,
    this.textColor,
    this.borderColor,
    required this.buttonText,
    Key? key,
  }) : super(key: key);

  VoidCallback onTap;

  Color? buttonColor;

  double? borderRadius;

  Color? textColor;

  String buttonText;

  Color? borderColor;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 2.3,
      height: 45,
      decoration: BoxDecoration(
          color: buttonColor ?? AppColors.gradientGreen,
          border: Border.all(color: borderColor ?? Colors.white),
          borderRadius: BorderRadius.circular((buttonText == "Send Reset Link"|| buttonText=="Set New Password" || buttonText=="Resend Link" ||buttonText =="Back to profile" || buttonText == "Upload")?borderRadius ??10:buttonText == "Update" || buttonText == "Change Email" || buttonText=="Save Changes"?borderRadius??30:0)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Text(
              buttonText,
              style: GoogleFonts.poppins(
                  color: textColor, fontSize:buttonText =="Send Reset Link"|| buttonText =="Set New Password"||buttonText=="Resend Link" || buttonText =="Back to profile" ||buttonText == "Update"?20:16, fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ),
    );
  }
}
