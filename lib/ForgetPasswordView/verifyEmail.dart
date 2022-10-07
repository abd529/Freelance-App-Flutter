// ignore_for_file: file_names

import 'package:be_pass/ForgetPasswordView/afterResendLink.dart';
import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_Colors.dart';
import '../Authentication/Controller/auth_controller.dart';

class VerifyEmailView extends StatefulWidget {
  static const routeName = "verify-email";
  const VerifyEmailView({Key? key}) : super(key: key);

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo.png"),
                height: 60,
              ),
            ),
          ),
          const SizedBox(
            height: 220,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 5, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Verify your email ",
                    style: GoogleFonts.poppins(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black),
                  ),
                  const Icon(
                    Icons.email_outlined,
                    color: AppColors.starColor,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "Account activation link sent to your email address: hello@pixinvent.com \n"
              "Please follow the link inside to continue.",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: AppColors.greyText,
              ),
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
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
                        builder: (context) => const AfterResendLinkView()));
                  },
                  buttonText: "Resend Link",
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
                        style:
                            GoogleFonts.poppins(color: AppColors.gradientGreen),
                      )
                    ],
                  ))
            ],
          )
        ]));
  }
}
