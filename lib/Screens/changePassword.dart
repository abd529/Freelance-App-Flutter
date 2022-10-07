// ignore_for_file: file_names, must_be_immutable

import 'package:be_pass/Authentication/Components/textformfield.dart';
import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Header(Icons.arrow_back_ios_new, "Change Password", ""),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: textformfeild(
                        isObscureText: false,
                        boolTitleShowHide: true,
                        fieldName: "Current Password",
                        hintText: "Enter current password"),
                  ),
                  textformfeild(
                      isObscureText: false,
                      boolTitleShowHide: true,
                      fieldName: "New Password",
                      hintText: "Enter New password"),
                  textformfeild(
                      isObscureText: false,
                      boolTitleShowHide: true,
                      fieldName: "Retype New Password",
                      hintText: "Retype new password"),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: 220,
                    child: CustomButton(
                      onTap: () {},
                      buttonText: 'Update',
                      textColor: AppColors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  dynamic icon;
  String title;
  String empty;
  Header(this.icon, this.title, this.empty, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Icon(
                icon,
                size: 22,
              )),
        ),
        Text(
          title,
          style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: AppColors.black),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(empty),
        )
      ],
    );
  }
}
