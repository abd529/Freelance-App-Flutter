// ignore_for_file: must_be_immutable, file_names

import 'package:be_pass/Authentication/Components/textformfield.dart';
import 'package:be_pass/Screens/changePassword.dart';
import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChangeEmailView extends StatefulWidget {
  static const routeName = "change-email";
  const ChangeEmailView({Key? key}) : super(key: key);

  @override
  State<ChangeEmailView> createState() => _ChangeEmailViewState();
}

class _ChangeEmailViewState extends State<ChangeEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Header(Icons.arrow_back_ios_new, "Change Email", ""),
          EUCard(
            "Note: After changing the email you will be asked to verify it again."
                "Secondly, an email is uniqueThis is how users identify you "
                "A Change may lead to a loss of credit",
            "Current Email",
            "Test@gmail.com",
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

class EUCard extends StatelessWidget {
  EUCard(this.note, this.title, this.idText, this.textField, this.button,
      {Key? key})
      : super(key: key);
  String note;
  String title;
  String idText;
  Widget button;
  Widget textField;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          note,
          style: GoogleFonts.poppins(fontSize: 17, fontWeight: FontWeight.w400),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15),
        child: Card(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 6),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              idText,
              style:
                  GoogleFonts.poppins(fontSize: 16, color: AppColors.greyText),
            ),
            const SizedBox(
              height: 40,
            ),
            textField,
            const SizedBox(
              height: 20,
            ),
            SizedBox(height: 50, width: 220, child: button),
            const SizedBox(
              height: 40,
            ),
          ],
        )),
      )
    ]);
  }
}
