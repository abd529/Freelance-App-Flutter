// ignore_for_file: prefer_const_constructors_in_immutables, prefer_const_constructors, use_build_context_synchronously, avoid_print, sized_box_for_whitespace, unnecessary_this

import 'package:be_pass/Authentication/Controller/auth_controller.dart';
import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Services/auth%20services/signUp.dart';
import 'package:be_pass/utils/Loader.dart';
import 'package:be_pass/utils/showMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Components/textformfield.dart';
import '../../app_Colors.dart';

class SignUpView extends StatefulWidget {
  static const routeName = "SignUpView";

  SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();
  AuthController controller = Get.put(AuthController());
  bool value = false;
  void _submitform() async {
    FocusScope.of(context).unfocus();
    try {
      PopupLoader.show();
      var authResponse = await signUp(
        controller.username.value,
        controller.email.value,
        controller.password.value,
      );
      PopupLoader.hide();
      if (!authResponse["error"]) {
        ShowMessage().showMessage(context, "Successfully SignUp");
      } else {
        ShowMessage().showErrorMessage(context, "Some error");
      }
    } catch (e) {
      PopupLoader.hide();
      print(["SubmitLogin exception:", e.toString()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Container(
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset("assets/splash-img.svg",
                        color: AppColors.gradientGreen)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Adventure starts here 😍",
                  style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: AppColors.boldTextColor),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text("Make your app management easy and fun!",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: AppColors.greyText)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  textformfeild(
                    isObscureText: false,
                    boolTitleShowHide: true,
                    fieldName: "Username",
                    hintText: "johndoe",
                    returnDatacall: (val) {
                      setState(() {
                        controller.username.value = val;
                      });
                    },
                  ),
                  textformfeild(
                    isObscureText: false,
                    boolTitleShowHide: true,
                    fieldName: "Email",
                    hintText: "johndoe@gmail.com",
                    returnDatacall: (val) {
                      setState(() {
                        controller.email.value = val;
                      });
                    },
                  ),
                  textformfeild(
                    isObscureText: true,
                    boolTitleShowHide: true,
                    fieldName: "Password",
                    hintText: ".........",
                    icon: Icons.remove_red_eye_outlined,
                    returnDatacall: (val) {
                      setState(() {
                        controller.password.value = val;
                      });
                    },
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 5),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                            height: 20,
                            width: 20,
                            child: Checkbox(
                              value: value,
                              onChanged: (bool? value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ),
                          ),
                        ),
                      ),
                      RichText(
                          text: TextSpan(
                              text: "I agree to",
                              style: GoogleFonts.poppins(
                                  fontSize: 14, color: AppColors.greyText),
                              children: <TextSpan>[
                            TextSpan(
                                text: "Terms of Services",
                                style: GoogleFonts.poppins(
                                    fontSize: 14,
                                    color: AppColors.gradientGreen,
                                    decoration: TextDecoration.underline,
                                    letterSpacing: 1)),
                            TextSpan(
                                text: "&",
                                style: GoogleFonts.poppins(
                                    fontSize: 14, color: AppColors.greyText)),
                            TextSpan(
                                text: "Privacy Policy",
                                style: GoogleFonts.poppins(
                                  fontSize: 14,
                                  color: AppColors.gradientGreen,
                                  decoration: TextDecoration.underline,
                                ))
                          ]))
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 45,
                    width: 350,
                    child: ElevatedButton(
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.gradientGreen),
                      ),
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitform();
                        }
                      },
                      child: Text('Sign up',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: AppColors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.greyText),
                      ),
                      TextButton(
                        child: Text(
                          "Log in in instead",
                          style: GoogleFonts.poppins(fontSize: 16),
                        ),
                        onPressed: () {
                          Get.to(LoginView());
                        },
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 1.5, width: 150, color: Colors.black26),
                        Text(
                          "or",
                          style: GoogleFonts.poppins(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                        Container(
                          height: 1.5,
                          width: 150,
                          color: Colors.black26,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Card(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 30,
                                width: 30,
                                child:
                                    SvgPicture.asset("assets/google-icon.svg")),
                            Text(
                              "sign_in_with_google",
                              softWrap: true,
                              style: GoogleFonts.poppins(
                                  fontSize: 23,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.greyText),
                            )
                          ],
                        ),
                      )),
                    ),
                  )
                ],
              ),
            )
          ]),
        ));
  }
}
