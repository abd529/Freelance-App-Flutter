// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:be_pass/Authentication/Controller/loginController.dart';
import 'package:be_pass/Screens/chat_screen.dart';
import 'package:be_pass/Screens/home_screen.dart';
import 'package:be_pass/Screens/landingPageView.dart';
import 'package:be_pass/Screens/profile_screen.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:velocity_x/velocity_x.dart';

import 'app_drawer.dart';
import 'category_dropdown.dart';
import 'country_dropdown.dart';
import 'user_card_widget.dart';

class BottomBar extends StatefulWidget {
  static const routeName = "BottomBar";

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final LoginController setInLoginController = Get.put(LoginController());

  bool status = false;

  String? validateEmail;
  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedValue = sharedPreferences.getString('token');
    setState(() {
      validateEmail = obtainedValue;
    });
  }

  @override
  initState() {
    getValidationData().whenComplete(() async {});
    super.initState();
  }

  bool checkStatus(String? code) {
    if (code == null) {
      status = false;
      return status;
    } else {
      status = true;
      return status;
    }
  }

  int _selectedIndex = 0;

  final List appbarText = [
    const Text("usercard", textAlign: TextAlign.center),
    const Text("usercard1", textAlign: TextAlign.center),
    const Text("usercard2", textAlign: TextAlign.center),
    const Text("usercard3", textAlign: TextAlign.center),
    const Text("Menu", textAlign: TextAlign.center),
  ];
  final List stringText = ["usercard", "usercard1", "usercard2", "Menu"];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    setInLoginController.setUserData(validateEmail);
    List<Widget> widgetOptions = <Widget>[
      HomeScreen(validateEmail == null ? false : true),
      LandingPageView(validateEmail == null ? false : true),
      const ChatScreen(),
      Profile(validateEmail == null ? false : true),
      AppDrawer(validateEmail == null ? false : true),
    ];
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: appbarText.elementAt(_selectedIndex),
      //   backgroundColor: appbarText.elementAt(_selectedIndex) == "Menu"
      //       ? Colors.grey
      //       : Colors.white,
      //   elevation: 0,
      // ),
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: Center(
        child: widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.web_asset),
              label: 'B-Card',
              backgroundColor: Color.fromARGB(255, 13, 227, 10),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.messenger_outline),
              label: 'Chat',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Profile',
              backgroundColor: Color.fromARGB(255, 13, 227, 10),
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.menu_rounded),
              label: 'Menu',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: AppColors.gradientGreen,
          selectedIconTheme: null,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 0),
    );
  }
}

class UC extends StatelessWidget {
  const UC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      UserCardWidget("assets/man.jpg", "Abdullah Ayaz",
          "Trainer, Nutritionist, Consultant", "Lahore, Pakistan", 3, 14, 10),
    ]);
  }
}

class Home extends StatelessWidget {
  final bool userCheck;
  const Home(this.userCheck);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            VxArc(
              arcType: VxArcType.CONVEX,
              height: 50,
              edge: VxEdge.BOTTOM,
              child: Container(
                height: 400,
                width: double.infinity,
                color: const Color(0xff59DF56),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 20,
                            child: CircleAvatar(
                              radius: 18,
                              foregroundColor: Colors.white,
                              backgroundColor: Color(0xff59DF56),
                              child: Text("en"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 70,
                    ),
                    const Text(
                      "Work Simply ",
                      style: TextStyle(color: Colors.white, fontSize: 36),
                    ),
                    const Text(
                      "Thanks to Be-Pass ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Catbut(),
                    const SizedBox(
                      height: 20,
                    ),
                    Countbut(),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 312,
                decoration: BoxDecoration(
                    color: const Color(0xff59DF56),
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "find_professionals",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height / 10,
            ),
            GestureDetector(
              onTap: () {},
              child: const Text(
                "Create an account",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff59DF56),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: RichText(
                text: const TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' Log in',
                        style: TextStyle(
                            color: Color(0xff59DF56),
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}
