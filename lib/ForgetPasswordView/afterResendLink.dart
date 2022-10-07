// ignore_for_file: file_names

import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../app_Colors.dart';
import '../Authentication/Controller/auth_controller.dart';

class AfterResendLinkView extends StatefulWidget {
  static const routeName = "verify-email";
  const AfterResendLinkView({Key? key}) : super(key: key);

  @override
  State<AfterResendLinkView> createState() => _AfterResendLinkViewState();
}

class _AfterResendLinkViewState extends State<AfterResendLinkView> {
  AuthController controller = Get.put(AuthController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
                child: SvgPicture.asset("assets/splash-img.svg",
                    color: AppColors.gradientGreen)),
          ),
          const SizedBox(
            height: 180,
          ),
          const Icon(
            Icons.file_download_done_outlined,
            color: AppColors.gradientGreen,
            size: 30,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 40, 5, 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    "Check your email",
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
              "We sent an email to: hello@pixinvent.com\n"
              "Please follow the link inside to continue."
              "If you can’t find the email within your Inbox,please check your Spam folder.",
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
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const ResetPasswordView()));
                  },
                  buttonText: "Back to profile",
                  textColor: AppColors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "didnt_receive_an_email",
                    style: GoogleFonts.poppins(
                      color: AppColors.greyText,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Resend",
                      style: GoogleFonts.poppins(
                          color: AppColors.gradientGreen, fontSize: 16),
                    ),
                  )
                ],
              )
            ],
          )
        ]));
  }
}
