// ignore_for_file: prefer_const_constructors, use_build_context_synchronously, avoid_print, sized_box_for_whitespace

import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:be_pass/Services/auth%20services/login.dart';
import 'package:be_pass/Widgets/bottom_nav.dart';
import 'package:be_pass/utils/Loader.dart';
import 'package:be_pass/utils/showMessage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Controller/auth_controller.dart';
import '../Components/textformfield.dart';
import '../../app_Colors.dart';

class LoginView extends StatefulWidget {
  static const routeName = "log-in";
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  AuthController controller = Get.put(AuthController());
  bool value = false;
  void _submitform() async {
    FocusScope.of(context).unfocus();
    try {
      PopupLoader.show();
      var authResponse = await login(
          controller.loginEmail.value, controller.loginPassword.value);
      PopupLoader.hide();
      if (!authResponse["error"]) {
        ShowMessage().showMessage(context, 'SuccessFully Login');
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => BottomBar()));
      } else {
        ShowMessage().showErrorMessage(context, 'Some Error');
        print("message");
      }
    } catch (e) {
      PopupLoader.hide();
      print(['SubmitLogin Exception:', e.toString()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 232, 232, 232),
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Container(
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset("assets/splash-img.svg",
                        color: AppColors.gradientGreen)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 40, 0, 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Adventure starts here 👋🏻",
                  style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                child: Text(
                  "Make your app management easy and fun!",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: AppColors.greyText,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  textformfeild(
                    isObscureText: false,
                    boolTitleShowHide: true,
                    fieldName: "Email",
                    hintText: "johndoe@gmail.com",
                    returnDatacall: (val) {
                      controller.loginEmail.value = val;
                    },
                  ),
                  textformfeild(
                    isObscureText: true,
                    boolTitleShowHide: true,
                    fieldName: "Password",
                    rightLabel: "Forgot Password?",
                    hintText: ".........",
                    icon: Icons.remove_red_eye_outlined,
                    returnDatacall: (val) {
                      controller.loginPassword.value = val;
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
                      Text(
                        "Remember me",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: AppColors.boldTextColor),
                      )
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
                      child: Text('Log In',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Colors.white)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    child: RichText(
                        text: TextSpan(
                            text: "new_on_our_platform",
                            style: GoogleFonts.poppins(
                                fontSize: 16, color: AppColors.greyText),
                            children: <TextSpan>[
                          TextSpan(
                              text: " Create an account",
                              style: GoogleFonts.poppins(
                                fontSize: 16,
                                color: AppColors.gradientGreen,
                              )),
                        ])),
                    onTap: () {
                      Get.to(SignUpView());
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 40),
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
                    height: 80,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Card(
                          child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                child:
                                    SvgPicture.asset("assets/google-icon.svg")),
                            Text(
                              "log_in_with_google",
                              style: GoogleFonts.poppins(
                                  fontSize: 24,
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
