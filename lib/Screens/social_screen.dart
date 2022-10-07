// prefer_const_literals_to_create_immutables

// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:be_pass/Screens/profile_screen.dart';
import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';

class SocialScreen extends StatelessWidget {
  static const routeName = "social-screen";
  const SocialScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController fbLink = TextEditingController();
    TextEditingController instaLink = TextEditingController();
    TextEditingController ttLink = TextEditingController();
    TextEditingController liLink = TextEditingController();
    TextEditingController twLink = TextEditingController();
    TextEditingController quLink = TextEditingController();
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 232, 232, 1),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: Row(
                    children: [
                      IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      const Text("Add Social Media",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const Icon(Icons.link),
                                const Text(" Social Media Links",
                                    style: TextStyle(fontSize: 18)),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            textformwidget(
                                labeltext: "Facebook",
                                controller: fbLink,
                                actionKeyboard: TextInputAction.next,
                                onSubmitField: () {},
                                textInputType: TextInputType.text,
                                hintText: "Add Link"),
                            const SizedBox(
                              height: 20,
                            ),
                            textformwidget(
                                labeltext: "Instagram",
                                controller: instaLink,
                                actionKeyboard: TextInputAction.next,
                                onSubmitField: () {},
                                textInputType: TextInputType.text,
                                hintText: "Add Link"),
                            const SizedBox(
                              height: 20,
                            ),
                            textformwidget(
                                labeltext: "Tik Tok",
                                controller: ttLink,
                                actionKeyboard: TextInputAction.next,
                                onSubmitField: () {},
                                textInputType: TextInputType.text,
                                hintText: "Add Link"),
                            const SizedBox(
                              height: 20,
                            ),
                            textformwidget(
                                labeltext: "Linked In",
                                controller: liLink,
                                actionKeyboard: TextInputAction.next,
                                onSubmitField: () {},
                                textInputType: TextInputType.text,
                                hintText: "Add Link"),
                            const SizedBox(
                              height: 20,
                            ),
                            textformwidget(
                                labeltext: "Twitter",
                                controller: twLink,
                                actionKeyboard: TextInputAction.next,
                                onSubmitField: () {},
                                textInputType: TextInputType.text,
                                hintText: "Add Link"),
                            const SizedBox(
                              height: 20,
                            ),
                            textformwidget(
                                labeltext: "Quora",
                                controller: quLink,
                                actionKeyboard: TextInputAction.done,
                                onSubmitField: () {},
                                textInputType: TextInputType.text,
                                hintText: "Add Link")
                          ],
                        ),
                      )))),
          const SizedBox(
            height: 20,
          ),
          CustomButton(
            onTap: () {},
            buttonText: "Save Changes",
            textColor: Colors.white,
            borderRadius: 25,
            borderColor: const Color.fromARGB(255, 232, 232, 232),
          )
        ]),
      ),
    );
  }
}
