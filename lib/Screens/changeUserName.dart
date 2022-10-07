// ignore_for_file: file_names

import 'package:be_pass/Authentication/Components/textformfield.dart';
import 'package:be_pass/Screens/changeEmail.dart';
import 'package:be_pass/Screens/changePassword.dart';
import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';

class ChangeUserName extends StatefulWidget {
  static const routeName = "change-username";
  const ChangeUserName({Key? key}) : super(key: key);

  @override
  State<ChangeUserName> createState() => _ChangeUserNameState();
}

class _ChangeUserNameState extends State<ChangeUserName> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Header(Icons.arrow_back_ios_new, "Change Username", ""),
          EUCard(
            "Note: A username is uniqueThis is how users identify you "
                "A change may lead to a loss of credit",
            "Current Username",
            "johndoe",
            textformfeild(
                isObscureText: false,
                boolTitleShowHide: true,
                fieldName: "New Email",
                hintText: "john@gmail.com"),
            CustomButton(
              onTap: () {},
              buttonText: 'Change Email',
              textColor: AppColors.white,
            ),
          )
        ],
      ),
    );
  }
}
