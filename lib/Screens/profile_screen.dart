// prefer_const_literals_to_create_immutables, sort_child_properties_last, non_constant_identifier_names, avoid_unnecessary_containers, prefer_const_constructors_in_immutables, unused_field, prefer_final_fields, sized_box_for_whitespace, use_key_in_widget_constructors, camel_case_types, unnecessary_null_comparison

// ignore_for_file: must_be_immutable, use_key_in_widget_constructors, camel_case_types

import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:be_pass/ForgetPasswordView/verifyEmail.dart';
import 'package:be_pass/Screens/bio_screen.dart';
import 'package:be_pass/Screens/certificates_screen.dart';
import 'package:be_pass/Screens/gallery_view.dart';
import 'package:be_pass/Screens/general_profile_screen.dart';
import 'package:be_pass/Screens/services.dart';
import 'package:be_pass/Screens/social_screen.dart';
import 'package:be_pass/Screens/working_areas.dart';
import 'package:be_pass/Screens/working_hours.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/custom_button_widget.dart';
import '../app_Colors.dart';
import 'landingPageView.dart';

class Profile extends StatefulWidget {
  static const routeName = "user-profile";
  final bool userCheck;
  final bool bioCheck = true;
  final bool serviceCheck = true;
  final bool whCheck = false;
  final bool waCheck = false;
  final bool certificateCheck = true;
  final bool galleryCheck = true;
  final bool socialMediaCheck = true;
  Profile(this.userCheck);

  @override
  State<Profile> createState() => _ProfileState();
  List serviceList = ["a", "a", "a", "a", "a"];
}

class _ProfileState extends State<Profile> {
  bool seeMore = false;
  bool facebook = true;
  bool insta = true;
  bool tiktok = true;
  bool linkedin = false;
  bool quora = false;
  bool twitter = false;

  bool imgCheck = false;
  String name = "Salena";

  @override
  Widget build(BuildContext context) {
    List<String> firstLetter = name.split("");
    List<Map> workingHours = [
      {"start": "7:00", "end": "8:00"}
    ];
    List<Map> certificateList = [
      {"name": "Personal Train", "exp": 4},
      {"name": "Gardener", "exp": 2}
    ];
    List<Map> galleryList = [
      {"name": "Endurance", "photos": 4},
      {"name": "Nutritionist", "photos": 2}
    ];
    return widget.userCheck
        ? Scaffold(
            backgroundColor: const Color(0xffE1E1E3),
            body: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Headse(firstLetter, imgCheck),
                    Column(children: [
                      Bio(
                          bioCheck: widget.bioCheck,
                          bioText:
                              "Here you can introduce yourself better write couple of words"),
                      widget.serviceCheck
                          ? serviceData()
                          : const ProfileCard(
                              "Services",
                              "Describe your services, explain everything you are doing and set the prices",
                              ServicesScreen.routeName),
                      widget.whCheck
                          ? workingHoursData(workingHours)
                          : const ProfileCard(
                              "Working Hours",
                              "Set your working hours for each day and let the clients know when you are available",
                              WorkingHours.routeName),
                      widget.waCheck
                          ? workingAreasData()
                          : const ProfileCard(
                              "Working Areas",
                              "Let the clients know in what places are you working",
                              WorkingAreas.routeName),
                      widget.certificateCheck
                          ? certificateData(certificateList)
                          : const ProfileCard(
                              "Certificates",
                              "List your certifications, degrees, courses and everything you got to show that you are qualified",
                              CertificatesScreen.routeName),
                      widget.galleryCheck
                          ? galleryData(galleryList)
                          : const ProfileCard(
                              "Gallery",
                              "Upload all the images that you have for each service, to impress everyone",
                              GalleryScreenView.routeName),
                      widget.galleryCheck
                          ? socialMediaData()
                          : const ProfileCard(
                              "Social Media",
                              "Add all the links to your social media",
                              SocialScreen.routeName),
                      const SizedBox(height: 10)
                    ])
                  ]),
            ),
          )
        : Scaffold(
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
                          child: Text("Profile",
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
                              child: Text("Build your business card",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
                            )),
                            const Text(
                              "It's easy",
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "All you have to do is fill in the blanks",
                              textAlign: TextAlign.center,
                            ),
                            const Text(
                              "And let clients choose you!",
                              textAlign: TextAlign.center,
                            ),
                            const Center(
                                child: Padding(
                              padding: EdgeInsets.all(20.0),
                              child: Text("But for that, you need",
                                  softWrap: true,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold)),
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
                                      style: TextStyle(
                                          color: AppColors.gradientGreen))
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

  Card socialMediaData() {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Social Media",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(SocialScreen.routeName);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit, color: AppColors.gradientGreen),
                        Text("Edit",
                            style: TextStyle(color: AppColors.gradientGreen))
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.facebook,
                      color: facebook ? AppColors.gradientGreen : Colors.grey),
                  SvgPicture.asset("assets/insta-icon.svg",
                      color: insta ? AppColors.gradientGreen : Colors.grey),
                  Icon(Icons.tiktok,
                      color: tiktok ? AppColors.gradientGreen : Colors.grey),
                  SvgPicture.asset("assets/linkedIn-icon.svg",
                      color: linkedin ? AppColors.gradientGreen : Colors.grey),
                  Icon(Icons.quora,
                      color: quora ? AppColors.gradientGreen : Colors.grey),
                  SvgPicture.asset("assets/twitter-icon.svg",
                      color: twitter ? AppColors.gradientGreen : Colors.grey),
                ],
              )
            ])));
  }

  Card galleryData(List<Map<dynamic, dynamic>> galleryList) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Gallery",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(GalleryScreenView.routeName);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit, color: AppColors.gradientGreen),
                        Text("Edit",
                            style: TextStyle(color: AppColors.gradientGreen))
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("Photos", style: TextStyle(color: Colors.grey))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: galleryList.length >= 2 ? 170 : 240,
                  child: ListView.builder(
                      itemBuilder: (context, index) => Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(galleryList[index]["name"]),
                                    Row(
                                      children: [
                                        SizedBox(
                                            width: 100,
                                            height: 50,
                                            child: Stack(children: [
                                              Positioned(
                                                right: 0,
                                                child: Image.network(
                                                  "https://images.pexels.com/photos/927022/pexels-photo-927022.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                                ),
                                              ),
                                              Positioned(
                                                right: 10,
                                                child: Image.network(
                                                  "https://images.pexels.com/photos/841130/pexels-photo-841130.jpeg?cs=srgb&dl=pexels-victor-freitas-841130.jpg&fm=jpg",
                                                ),
                                              ),
                                              Positioned(
                                                //right: 0,
                                                child: Image.network(
                                                  "https://images.pexels.com/photos/1216589/pexels-photo-1216589.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                                                ),
                                              ),
                                            ])),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Text(galleryList[index]["photos"]
                                            .toString()),
                                      ],
                                    ),
                                  ]),
                              const Divider(),
                            ],
                          ),
                      itemCount: galleryList.length)),
            ])));
  }

  Card certificateData(List<Map<dynamic, dynamic>> certificateList) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Certificates",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(CertificatesScreen.routeName);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit, color: AppColors.gradientGreen),
                        Text("Edit",
                            style: TextStyle(color: AppColors.gradientGreen))
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Name",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text("Exp(Years)", style: TextStyle(color: Colors.grey))
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  height: certificateList.length >= 2 ? 110 : 150,
                  child: ListView.builder(
                      itemBuilder: (context, index) => Column(
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(certificateList[index]["name"]),
                                    Text(certificateList[index]["exp"]
                                        .toString()),
                                  ]),
                              const Divider(),
                            ],
                          ),
                      itemCount: certificateList.length)),
            ])));
  }

  Card workingAreasData() {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Working Areas",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(WorkingAreas.routeName);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit, color: AppColors.gradientGreen),
                        Text("Edit",
                            style: TextStyle(color: AppColors.gradientGreen))
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(),
              const Text(
                  "This is supposed to be the working areas mentioned by the user. I don't know it seems like it should also have some chips but nevermind",
                  style: TextStyle(color: Colors.grey))
            ])));
  }

  Card workingHoursData(List<Map<dynamic, dynamic>> workingHours) {
    return Card(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Working Hours",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(WorkingHours.routeName);
                    },
                    child: Row(
                      children: const [
                        Icon(Icons.edit, color: AppColors.gradientGreen),
                        Text("Edit",
                            style: TextStyle(color: AppColors.gradientGreen))
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(indent: 20, endIndent: 20),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Monday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Tuesday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Wednesday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Thursday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Friday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Saturday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text("Sunday",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(workingHours[0]["start"] + "-" + workingHours[0]["end"],
                    style: const TextStyle(color: Colors.grey))
              ]),
              const Divider(),
            ])));
  }

  Card serviceData() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Service",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed(ServicesScreen.routeName);
                  },
                  child: Row(
                    children: const [
                      Icon(Icons.edit, color: AppColors.gradientGreen),
                      Text("Edit",
                          style: TextStyle(color: AppColors.gradientGreen))
                    ],
                  ),
                ),
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Type", style: TextStyle(color: Colors.grey)),
                Text("Price(avg.)", style: TextStyle(color: Colors.grey))
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: seeMore ? 300 : 150,
              child: ListView.builder(
                itemBuilder: ((context, index) => serviceWidget()),
                itemCount: seeMore ? widget.serviceList.length : 1,
              ),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    seeMore = !seeMore;
                  });
                },
                child: Text(seeMore ? "See Less" : "See More",
                    style: const TextStyle(color: AppColors.gradientGreen)))
          ],
        ),
      ),
    );
  }

  Column serviceWidget() {
    return Column(children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text("Service #", style: TextStyle(color: Colors.grey)),
          Text("Prices", style: TextStyle(color: Colors.grey))
        ],
      ),
      SizedBox(
          height: 100,
          child: ListView.builder(
            itemBuilder: (context, index) => Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [Text("Personal Training"), Text("10\$")],
                ),
                const SizedBox(height: 5)
              ],
            ),
            itemCount: 3,
          )),
      const Divider(),
      const SizedBox(height: 20),
    ]);
  }
}

class Headse extends StatefulWidget {
  final List firstLetter;
  final bool imgCheck;
  const Headse(this.firstLetter, this.imgCheck);

  @override
  State<Headse> createState() => _HeadseState();
}

class _HeadseState extends State<Headse> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: Container(
                                    height: 150,
                                    width: 150,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 214, 214, 214),
                                      borderRadius: BorderRadius.circular(55),
                                    ),
                                    child: widget.imgCheck == false
                                        ? CircleAvatar(
                                            backgroundColor: Colors.grey,
                                            child: Text(widget.firstLetter[0],
                                                style: const TextStyle(
                                                    fontSize: 55,
                                                    color: Colors.white)),
                                          )
                                        : SvgPicture.asset(
                                            "assets/user.svg",
                                          )),
                              ),
                              const Icon(
                                Icons.stars,
                                color: AppColors.gradientGreen,
                              )
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text("Company Logo",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold),
                                )),
                            SizedBox(
                              height: 50,
                              width: 50,
                              child: SvgPicture.asset(
                                "assets/splash-img.svg",
                                color: AppColors.gradientGreen,
                              ),
                            ),
                          ],
                        )
                      ],
                    );
                  }),
            ),
            Text("Selina Kayle. O",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                )),
            //professional cat
            Row(
              children: [
                const Icon(
                  FluentIcons.toolbox_12_filled,
                  color: AppColors.gradientGreen,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("Personal Trainer",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          fontSize: 14, color: AppColors.greyText),
                    ))
              ],
            ),
            // phone

            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(
                  Icons.phone_callback,
                  color: AppColors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("+ 00 00000000",
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(fontSize: 14, color: AppColors.black),
                    ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            // email
            Row(
              children: [
                const Icon(
                  Icons.email,
                  color: AppColors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text("name@gmail.com",
                    style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                        fontSize: 14,
                        color: AppColors.black,
                      ),
                    ))
              ],
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(VerifyEmailView.routeName);
              },
              child: const Text("Confirm Your Email",
                  style: TextStyle(
                      color: Color.fromRGBO(89, 223, 86, 1),
                      fontSize: 15,
                      decoration: TextDecoration.underline)),
            ),
            const Divider(
              color: AppColors.greyText,
              thickness: 0.8,
            ),
            const Text("Date of Birth", style: TextStyle()),
            const Text("20-02-1998",
                style: TextStyle(fontSize: 19, color: Colors.grey)),
            const Divider(
              color: AppColors.greyText,
              thickness: 0.8,
            ),
            const Text("Location", style: TextStyle()),
            const Text("Barcelona, Spain",
                style: TextStyle(fontSize: 19, color: Colors.grey)),
            const Divider(
              color: AppColors.greyText,
              thickness: 0.8,
            ),
            const Text("User Name", style: TextStyle()),
            const Text("kylo.seeelina",
                style: TextStyle(fontSize: 19, color: Colors.grey)),
            const Divider(
              color: AppColors.greyText,
              thickness: 0.8,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomButton(
                  onTap: () {
                    Navigator.of(context).pushNamed(GenProfile.routeName);
                  },
                  buttonText: "Edit",
                  buttonColor: AppColors.white,
                  textColor: AppColors.gradientGreen,
                  borderRadius: 20,
                  borderColor: AppColors.gradientGreen,
                ),
                CustomButton(
                  onTap: () {},
                  buttonText: "Publish",
                  buttonColor: AppColors.gradientGreen,
                  textColor: AppColors.white,
                  borderRadius: 20,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class textformwidget extends StatelessWidget {
  final String labeltext;
  final TextEditingController controller;
  final TextInputAction actionKeyboard;
  final Function onSubmitField;
  final TextInputType textInputType;
  final String hintText;
  const textformwidget({
    Key? key,
    required this.labeltext,
    required this.controller,
    required this.actionKeyboard,
    required this.onSubmitField,
    required this.textInputType,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: actionKeyboard,
      keyboardType: textInputType,
      decoration: InputDecoration(hintText: hintText, label: Text(labeltext)),
    );
  }
}

class Bio extends StatefulWidget {
  final bool bioCheck;
  final String bioText;
  const Bio({Key? key, required this.bioCheck, required this.bioText})
      : super(key: key);

  @override
  State<Bio> createState() => _BioState();
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return widget.bioCheck == true
        ? Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed(BioScreen.routeName);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Bio",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(BioScreen.routeName);
                            },
                            child: Row(
                              children: const [
                                Icon(Icons.edit,
                                    color: AppColors.gradientGreen),
                                Text("Edit",
                                    style: TextStyle(
                                        color: AppColors.gradientGreen))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(widget.bioText),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
          )
        : Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Bio",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                              "Here you can introduce yourself better Write couple of words",
                              style: TextStyle(color: Colors.grey)),
                        )),
                    const SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        child: CustomButton(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(BioScreen.routeName);
                          },
                          buttonText: "Add Info",
                          buttonColor: AppColors.gradientGreen,
                          textColor: AppColors.white,
                          borderRadius: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
  }
}

class ProfileCard extends StatelessWidget {
  final String title;
  final String description;
  final String route;
  const ProfileCard(this.title, this.description, this.route);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 20),
            ),
            const Divider(
              thickness: 0.8,
            ),
            Text(
              description,
              style: GoogleFonts.poppins(
                textStyle: const TextStyle(
                    color: AppColors.greyText, wordSpacing: 10, fontSize: 12),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Material(
              color: Colors.white,
              child: Center(
                child: Container(
                  color: Colors.white,
                  width: 200,
                  child: CustomButton(
                    onTap: () {
                      if (route != "null") {
                        Navigator.of(context).pushNamed(route);
                      }
                    },
                    buttonText: "Add Info",
                    buttonColor: AppColors.gradientGreen,
                    textColor: AppColors.white,
                    borderRadius: 20,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
