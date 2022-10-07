// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable, prefer_const_declarations, unused_element

import 'package:be_pass/Widgets/user_card_widget.dart';
import 'package:flutter/material.dart';
import '../Widgets/app_drawer.dart';

class Usercard extends StatefulWidget {
  const Usercard({Key? key}) : super(key: key);

  @override
  State<Usercard> createState() => _UsercardState();
}

class _UsercardState extends State<Usercard> {
  @override
  Widget build(BuildContext context) {
    bool handler = false;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(),
      drawer: Drawer(child: AppDrawer(true)),
      //bottomNavigationBar: BottomBar(),
      body: Column(children: [
        UserCardWidget("assets/man.jpg", "Abdullah Ayaz",
            "Trainer, Nutritionist, Consultant", "Lahore, Pakistan", 3, 14, 10),
      ]),
    );
  }
}
