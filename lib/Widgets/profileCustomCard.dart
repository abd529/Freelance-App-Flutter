// ignore_for_file: prefer_const_constructors, file_names, avoid_print, must_be_immutable, use_key_in_widget_constructors, camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../app_Colors.dart';

class ProfileCustomCard extends StatefulWidget {
  final String name;
  const ProfileCustomCard(this.name);

  @override
  State<ProfileCustomCard> createState() => _ProfileCustomCardState();
}

class _ProfileCustomCardState extends State<ProfileCustomCard> {
  bool imgCheck = false;
  @override
  Widget build(BuildContext context) {
    List<String> firstLetter = widget.name.split("");
    return Card(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(children: [
              Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(55),
                  ),
                  child: imgCheck == true
                      ? SvgPicture.asset(
                          "assets/user.svg",
                        )
                      : CircleAvatar(
                          child: Text(firstLetter[0],
                              style:
                                  TextStyle(fontSize: 55, color: Colors.white)),
                          backgroundColor: Colors.grey,
                        )),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.ideographic,
                children: [
                  Text("Erica Thomas",
                      style: GoogleFonts.poppins(
                          fontSize: 24, fontWeight: FontWeight.w600)),
                  Text("Personal fitness trainer",
                      style: GoogleFonts.poppins(
                          fontSize: 16, fontWeight: FontWeight.w400)),
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: const EdgeInsets.symmetric(vertical: 12.0),
                        itemBuilder: (context, _) =>
                            const Icon(Icons.star, color: AppColors.starColor),
                        onRatingUpdate: (rating) {
                          print(rating);
                        },
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "(14)",
                          style: GoogleFonts.poppins(
                              color: AppColors.gradientGreen,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ]),
          ),
          Column(children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                customWidget(
                  icon: Icons.mail,
                  dataText: 'ericathomas@gmail.com',
                ),
                SizedBox(
                  width: 20,
                ),
                customWidget(
                  icon: Icons.phone,
                  dataText: '+7911010118',
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.ideographic,
              children: [
                customWidget(
                  icon: Icons.person,
                  dataText: 'Age:34',
                ),
                customWidget(
                  icon: Icons.location_on,
                  dataText: 'San Fransisco, Newburg City',
                ),
              ],
            ),
          ]),
          Padding(
            padding:
                const EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
            child: Container(
              height: 55,
              width: double.infinity,
              decoration: const BoxDecoration(boxShadow: [
                BoxShadow(
                    color: AppColors.gradientGreen,
                    spreadRadius: 0.01,
                    blurRadius: 6,
                    offset: Offset(0, 0))
              ]),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                  backgroundColor:
                      MaterialStateProperty.all(AppColors.gradientGreen),
                ),
                onPressed: () {},
                child: Text('Get Started Now',
                    style: GoogleFonts.poppins(
                        fontSize: 20, fontWeight: FontWeight.w600)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class customWidget extends StatelessWidget {
  final String dataText;
  IconData icon;
  customWidget({required this.dataText, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.ideographic,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Icon(
              icon,
              color: AppColors.gradientGreen,
              size: 16,
            )),
        Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text(
            dataText,
            style: GoogleFonts.poppins(fontSize: 12),
          ),
        )
      ],
    );
  }
}
