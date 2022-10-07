// prefer_const_literals_to_create_immutables, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unused_import, non_constant_identifier_names

// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:be_pass/ForgetPasswordView/forgetPasswordView.dart';
import 'package:be_pass/Screens/changeEmail.dart';
import 'package:be_pass/Screens/changeUserName.dart';
import 'package:be_pass/Screens/credits_screen.dart';
import 'package:be_pass/Screens/language_screen.dart';
import 'package:be_pass/Screens/time_currency.dart';
import 'package:be_pass/Widgets/bottom_nav.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppDrawer extends StatelessWidget {
  final bool userCheck;
  const AppDrawer(this.userCheck);
  void removeValue() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.remove('token');
  }

  @override
  Widget build(BuildContext context) {
    if (userCheck) {
      return ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              const Center(
                child: Text("Menu",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              const SizedBox(height: 40),
              headingText("Preferences"),
              const SizedBox(height: 10),
              customTileTrail("Language / Hebrew", Icons.language,
                  LanguageScreen.routeName, context, null),
              const SizedBox(height: 10),
              customTileTrail(
                  "Currency & Time Format",
                  Icons.currency_exchange_sharp,
                  CurrencyTimeScreen.routeName,
                  context,
                  null),
              const SizedBox(height: 10),
              headingText("Account Settings"),
              const SizedBox(height: 10),
              customTileTrail("Change Email", Icons.mail_outline_outlined,
                  ChangeEmailView.routeName, context, null),
              const SizedBox(height: 10),
              customTileTrail("Change Username", Icons.person_outline_rounded,
                  ChangeUserName.routeName, context, null),
              const SizedBox(height: 10),
              customTileTrail("Change Password", Icons.lock_outline,
                  ForgetPasswordView.routeName, context, null),
              const SizedBox(height: 10),
              customTileTrail("Logout", Icons.lock_open_sharp,
                  BottomBar.routeName, context, removeValue),
              const SizedBox(height: 10),
              headingText("Credits"),
              const SizedBox(height: 10),
              customTileTrail("Credit", Icons.attach_money,
                  CreditsScreen.routeName, context, null),
              const SizedBox(height: 10),
              headingText("Other"),
              const SizedBox(height: 10),
              CustomListTile("Rate Our App", Icons.star_border, Colors.white,
                  AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 10),
              CustomListTile("Invite Your Friend", Icons.people_outline_rounded,
                  Colors.white, AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 10),
              CustomListTile(" Our Website", Icons.desktop_windows_rounded,
                  Colors.white, AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 10),
              CustomListTile("Contact Us", Icons.messenger_outline_rounded,
                  Colors.white, AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 50),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: const Text("Terms of Service & Privacy Policy",
                        style:
                            TextStyle(decoration: TextDecoration.underline))),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ],
      );
    } else {
      return ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 30),
              const Text("Menu",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 40),
              CustomListTile("Rate Our App", Icons.star_border, Colors.white,
                  AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 10),
              CustomListTile("Invite Your Friend", Icons.people_outline_rounded,
                  Colors.white, AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 10),
              CustomListTile(" Our Website", Icons.desktop_windows_rounded,
                  Colors.white, AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 10),
              CustomListTile("Contact Us", Icons.messenger_outline_rounded,
                  Colors.white, AppColors.gradientGreen, 'null', context),
              const SizedBox(height: 80),
              CustomListTile(
                  "Join Us",
                  Icons.person_add_alt,
                  AppColors.gradientGreen,
                  Colors.white,
                  SignUpView.routeName,
                  context),
              const SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Get.to(const LoginView());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account? "),
                    const Text("Log in",
                        style: TextStyle(color: AppColors.gradientGreen))
                  ],
                ),
              )
            ],
          ),
        ],
      );
    }
  }

  Padding headingText(String text) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.gradientGreen,
        ),
      ),
    );
  }

  Widget customTileTrail(
      text, icon, route, context, Function()? sharedPreferenceValue) {
    return GestureDetector(
      onTap: () {
        if (route != "null" && sharedPreferenceValue == null) {
          Navigator.of(context).pushNamed(route);
        } else {
          Navigator.of(context).pushNamed(route);
          sharedPreferenceValue!();
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListTile(
          tileColor: Colors.white,
          horizontalTitleGap: 0,
          leading: Icon(icon, color: AppColors.gradientGreen),
          title: Text(text),
          trailing:
              const Icon(Icons.arrow_forward_ios_rounded, color: Colors.grey),
        ),
      ),
    );
  }

  GestureDetector CustomListTile(String text, IconData icon, Color conColor,
      Color textColor, String route, BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (route != "null") {
          Navigator.of(context).pushNamed(route);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          decoration: BoxDecoration(
              color: conColor, borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(icon, color: textColor),
              const SizedBox(width: 10),
              Text(text, style: TextStyle(color: textColor)),
            ]),
          ),
        ),
      ),
    );
  }
}
