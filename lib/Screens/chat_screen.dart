import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:be_pass/Screens/landingPageView.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: const [
                  SizedBox(height: 20),
                  Center(
                    child: Text("Chat",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      const Center(
                          child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("Want to chat with professionals ?",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      )),
                      const Text(
                        "Chat, Get to know the professional",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Find out if he or she fits your needs",
                        textAlign: TextAlign.center,
                      ),
                      const Text(
                        "Make an appointment and let's roll!",
                        textAlign: TextAlign.center,
                      ),
                      const Center(
                          child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Text("But for that, you need",
                            softWrap: true,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold)),
                      )),
                      const Icon(
                        Icons.arrow_downward_rounded,
                        color: AppColors.gradientGreen,
                        size: 45,
                      ),
                      customListTile(
                          "Create an account",
                          Icons.person_add_alt_outlined,
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
                          children: const [
                            Text("Already have an account? "),
                            Text("Log in",
                                style:
                                    TextStyle(color: AppColors.gradientGreen))
                          ],
                        ),
                      ),
                      const SizedBox(height: 30)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
