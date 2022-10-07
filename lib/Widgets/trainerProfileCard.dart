// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names, camel_case_types, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_Colors.dart';

class TrainerProfileCard extends StatelessWidget {
  TrainerProfileCard({Key? key}) : super(key: key);
  List options = [
    "haha",
    "hoho",
    "heheh",
    "hoho",
    "heheh",
    "hoho",
    "heheh",
  ];
  Widget chipList(BuildContext context) {
    return Wrap(
        children: List<Widget>.generate(
      options.length,
      (int idx) {
        return ChoiceChip(
          label: Text(
            options[idx],
          ),
          selected: true,
          selectedColor: Color.fromARGB(255, 168, 230, 167),
          labelStyle: TextStyle(color: Colors.black),
        );
      },
    ).toList());
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                    height: 70,
                    width: 70,
                    child: SvgPicture.asset("assets/splash-img.svg",
                        color: AppColors.gradientGreen)),
              ),
              Text(
                'Personal fitness trainer',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              "Quis ipsum suspendisse ultrices gravida. Risus commodo viverra maecenas accumsan lacus vel facilisis. Lorem ipsum dolor sit amet, consectetur.",
              textAlign: TextAlign.left,
              style: GoogleFonts.poppins(
                  fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "My Professions and Skills",
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
          ),
          SizedBox(
              height: 120,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: chipList(context),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.facebook, color: AppColors.gradientGreen),
              SvgPicture.asset("assets/insta-icon.svg",
                  color: AppColors.gradientGreen),
              Icon(Icons.tiktok, color: AppColors.gradientGreen),
              SvgPicture.asset("assets/linkedIn-icon.svg",
                  color: AppColors.gradientGreen),
              Icon(Icons.quora, color: AppColors.gradientGreen),
              SvgPicture.asset("assets/twitter-icon.svg",
                  color: AppColors.gradientGreen),
            ],
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class customProfieWidget extends StatelessWidget {
  final String dataText;
  final String value;
  customProfieWidget({required this.dataText, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      textBaseline: TextBaseline.ideographic,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, top: 5),
          child: Text(
            dataText,
            style: GoogleFonts.poppins(
                fontSize: 18,
                color: AppColors.gradientGreen,
                fontWeight: FontWeight.w600),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
              value,
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.w700),
            )),
      ],
    );
  }
}
