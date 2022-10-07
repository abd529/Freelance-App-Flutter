// prefer_const_literals_to_create_immutables, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

// ignore_for_file: use_key_in_widget_constructors, file_names

import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/certificatesCard.dart';
import '../Widgets/profileCustomCard.dart';
import '../Widgets/trainerProfileCard.dart';
import '../app_Colors.dart';

class LandingPageView extends StatefulWidget {
  final bool userCheck;
  static const routeName = "landing-page";
  const LandingPageView(this.userCheck);

  @override
  State<LandingPageView> createState() => _LandingPageViewState();
}

class _LandingPageViewState extends State<LandingPageView> {
  bool feedbackExist = true;
  String name = "Erica thomas";
  bool tabHandler = true;
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
          selectedColor: const Color.fromARGB(255, 168, 230, 167),
          labelStyle: const TextStyle(color: Colors.black),
        );
      },
    ).toList());
  }

  @override
  Widget build(BuildContext context) {
    if (widget.userCheck == true) {
      return Scaffold(
        backgroundColor: AppColors.backGround,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 0,
              ),
              Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  child: ProfileCustomCard(name)),
              Card(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabHandler = true;
                      });
                    },
                    child: Container(
                        decoration: tabHandler == true
                            ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 3.0,
                                      color: AppColors.gradientGreen),
                                ),
                              )
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("     About     ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: tabHandler == true
                                      ? AppColors.gradientGreen
                                      : Colors.black)),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        tabHandler = false;
                      });
                    },
                    child: Container(
                        decoration: tabHandler == false
                            ? const BoxDecoration(
                                border: Border(
                                  bottom: BorderSide(
                                      width: 3.0,
                                      color: AppColors.gradientGreen),
                                ),
                              )
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("    Feedbacks    ",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: tabHandler == false
                                      ? AppColors.gradientGreen
                                      : Colors.black)),
                        )),
                  ),
                ],
              )),
              tabHandler == true
                  ? Column(children: [
                      Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20)),
                          child: TrainerProfileCard()),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                          child: Text(
                            "Services",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 370,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Column(children: [
                                  SizedBox(
                                      height: 370,
                                      width: 220,
                                      child: Stack(
                                        children: [
                                          const SizedBox(
                                              height: 160,
                                              child: Image(
                                                  image: NetworkImage(
                                                      "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?cs=srgb&dl=pexels-victor-freitas-841130.jpg&fm=jpg"))),
                                          Positioned(
                                              bottom: 50,
                                              child: Container(
                                                height: 230,
                                                width: 220,
                                                decoration: BoxDecoration(
                                                    color: AppColors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          "TRX",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                        ),
                                                      ),
                                                      RichText(
                                                          text: TextSpan(
                                                              text:
                                                                  "Quis ipsum suspendisse ultrices gravida. Risu...",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                color: AppColors
                                                                    .black,
                                                              ),
                                                              children: <
                                                                  TextSpan>[
                                                            TextSpan(
                                                                text: "more",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        16,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    color: AppColors
                                                                        .gradientGreen))
                                                          ])),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 10, 0, 0),
                                                        child: Container(
                                                            height: 110,
                                                            width: 200,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10),
                                                              color: AppColors
                                                                  .backGround,
                                                            ),
                                                            child: Column(
                                                              children: [
                                                                customProfieWidget(
                                                                  dataText:
                                                                      'Group',
                                                                  value: '10\$',
                                                                ),
                                                                customProfieWidget(
                                                                  dataText:
                                                                      'Personal',
                                                                  value: '10\$',
                                                                ),
                                                                customProfieWidget(
                                                                  dataText:
                                                                      'Consulting',
                                                                  value: '10\$',
                                                                ),
                                                              ],
                                                            )),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ))
                                ]),
                              );
                            }),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, bottom: 20),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Working Hour",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 20, right: 10),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.baseline,
                                  textBaseline: TextBaseline.ideographic,
                                  children: [
                                    Text(
                                      "Sunday",
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: "8:00 AM",
                                            style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500,
                                              color: AppColors.black,
                                            ),
                                            children: <TextSpan>[
                                          TextSpan(
                                              text: "-",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.black)),
                                          TextSpan(
                                              text: "5:00 PM",
                                              style: GoogleFonts.poppins(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.black))
                                        ])),
                                  ],
                                ),
                              );
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, bottom: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Working Areas",
                                  style: GoogleFonts.poppins(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w700),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: chipList(context),
                                ),
                                const Text("I work in north",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                      ),
                      const CertificatedCared(),
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 20),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Gallery",
                            style: GoogleFonts.poppins(
                                fontSize: 24, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Column(children: [
                                  SizedBox(
                                      height: 200,
                                      width: 150,
                                      child: Stack(
                                        children: [
                                          const SizedBox(
                                              height: 140,
                                              child: Image(
                                                  image: NetworkImage(
                                                      "https://images.pexels.com/photos/1216589/pexels-photo-1216589.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"))),
                                          Positioned(
                                              bottom: 0,
                                              child: Container(
                                                height: 90,
                                                width: 150,
                                                decoration: BoxDecoration(
                                                    color: AppColors.white,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10)),
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: Column(
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            Alignment.topLeft,
                                                        child: Text(
                                                          "Endurance",
                                                          style: GoogleFonts
                                                              .poppins(
                                                                  fontSize: 20,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w600),
                                                        ),
                                                      ),
                                                      Row(
                                                        children: [
                                                          Text("17",
                                                              style: GoogleFonts
                                                                  .poppins(
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w400,
                                                                color: AppColors
                                                                    .black,
                                                              )),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                        .only(
                                                                    left: 6),
                                                            child: Text("photo",
                                                                style: GoogleFonts.poppins(
                                                                    fontSize:
                                                                        18,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w400,
                                                                    color: AppColors
                                                                        .black)),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ))
                                        ],
                                      ))
                                ]),
                              );
                            }),
                      ),
                    ])
                  : Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    color: AppColors.gradientGreen,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(35))),
                                child: const Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Center(
                                      child: Text("Leave Feedback",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                            //fontWeight: FontWeight.bold
                                          ))),
                                )),
                          ),
                        ),
                        feedbackExist == true
                            ? Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Card(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.star_rounded,
                                                  color:
                                                      AppColors.gradientGreen,
                                                  size: 50),
                                              Text("5.0",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          const Text("(14 Reviews)",
                                              style: TextStyle(
                                                  color: Color.fromARGB(
                                                      255, 125, 125, 125),
                                                  fontSize: 18))
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Align(
                                        alignment: Alignment.topLeft,
                                        child: Text("Rating Breakdown",
                                            style: TextStyle(
                                                color: AppColors.gradientGreen,
                                                fontWeight: FontWeight.bold))),
                                  ),
                                  Card(
                                      color: Colors.white,
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          children: [
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text("Price")
                                                    ],
                                                  ),
                                                  Row(
                                                    children: [
                                                      RatingBar.builder(
                                                        initialRating: 3,
                                                        minRating: 1,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: true,
                                                        itemCount: 5,
                                                        itemSize: 20,
                                                        itemPadding:
                                                            const EdgeInsets
                                                                    .symmetric(
                                                                vertical: 12.0),
                                                        itemBuilder: (context,
                                                                _) =>
                                                            const Icon(
                                                                Icons.star,
                                                                color: AppColors
                                                                    .gradientGreen),
                                                        onRatingUpdate:
                                                            (rating) {},
                                                      ),
                                                      const Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 5),
                                                        child: Text(
                                                          "(14)",
                                                        ),
                                                      )
                                                    ],
                                                  )
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text("Deadlines")
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [],
                                                  )
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text("quality_and_skills")
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [],
                                                  )
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text("Communications")
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [],
                                                  )
                                                ]),
                                            Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: const [
                                                      Text("Attitude")
                                                    ],
                                                  ),
                                                  Row(
                                                    children: const [],
                                                  )
                                                ]),
                                          ],
                                        ),
                                      ))
                                ],
                              )
                            : Center(
                                child: Padding(
                                padding: const EdgeInsets.all(80.0),
                                child: Column(
                                  children: const [
                                    Icon(Icons.feedback,
                                        size: 150, color: Colors.grey),
                                    Text("No Feedback Found")
                                  ],
                                ),
                              )),
                      ],
                    )
            ],
          ),
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 232, 232, 232),
        body: Center(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                  children: const [
                    SizedBox(height: 20),
                    Center(
                      child: Text("Business Card",
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
                          child: Text("Business Owner?",
                              softWrap: true,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                        )),
                        const Text(
                          "Create your personal business card",
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
}

Widget customListTile(
    text, icon, Color conColor, Color textColor, route, context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).pushNamed(route);
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
