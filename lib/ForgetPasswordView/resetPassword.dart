// ignore_for_file: file_names

import 'package:be_pass/Authentication/Components/textformfield.dart';
import 'package:be_pass/ForgetPasswordView/verifyEmail.dart';
import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_Colors.dart';
import '../Authentication/Controller/auth_controller.dart';

class ResetPasswordView extends StatefulWidget {
  static const routeName = "reset-pass";
  const ResetPasswordView({Key? key}) : super(key: key);

  @override
  State<ResetPasswordView> createState() => _ResetPasswordViewState();
}

class _ResetPasswordViewState extends State<ResetPasswordView> {
  AuthController controller = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: SvgPicture.asset("assets/splash-img.svg",
                color: AppColors.gradientGreen)),
      ),
      const SizedBox(
        height: 100,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 5, 10),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Text(
                "Reset Password ?",
                style: GoogleFonts.poppins(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black),
              ),
              const Icon(
                Icons.lock_clock_outlined,
                color: AppColors.starColor,
              )
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Text(
          "Your new password must be different from previously used passwords",
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400,
            fontSize: 16,
            color: AppColors.greyText,
          ),
        ),
      ),
      const SizedBox(
        height: 30,
      ),
      Column(
        children: [
          textformfeild(
            fieldName: "New Password",
            isObscureText: true,
            boolTitleShowHide: true,
            hintText: "Password",
            returnDatacall: (val) {
              controller.newPassword.value = val;
            },
          ),
          textformfeild(
            fieldName: "Confirm Password",
            isObscureText: true,
            boolTitleShowHide: true,
            hintText: "Password",
            returnDatacall: (val) {
              controller.confirmPassword.value = val;
            },
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 45,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: CustomButton(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const VerifyEmailView()));
              },
              buttonText: "Set New Password",
              textColor: AppColors.white,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.arrow_back_ios,
                    color: AppColors.gradientGreen,
                    size: 18,
                  ),
                  Text(
                    "Back to login",
                    style: GoogleFonts.poppins(color: AppColors.gradientGreen),
                  )
                ],
              ))
        ],
      )
    ]));
  }
}
