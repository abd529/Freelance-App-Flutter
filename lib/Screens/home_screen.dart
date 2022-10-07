// ignore_for_file: use_key_in_widget_constructors

import 'dart:async';

import 'package:be_pass/Authentication/View/login_view.dart';
import 'package:be_pass/Authentication/View/sign_up_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:be_pass/Widgets/category_dropdown.dart';
import 'package:be_pass/Widgets/country_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_place/google_place.dart';
import 'package:velocity_x/velocity_x.dart';
import '../app_Colors.dart';
import '../generated/l10n.dart';

class HomeScreen extends StatefulWidget {
  final bool userCheck;
  const HomeScreen(this.userCheck);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late GooglePlace googlePlace;
  List<AutocompletePrediction> predictions = [];
  Timer? debounce;
  DetailsResult? position;
  late FocusNode locFocusNode;
  TextEditingController loc = TextEditingController();
  @override
  void initState() {
    super.initState();
    String apikey = "AIzaSyCkmpaMPmzhJgTLPh2r_14RB4Je-tX76lw";
    googlePlace = GooglePlace(apikey);
    locFocusNode = FocusNode();
  }

  void autoCompleteSearch(String value) async {
    var result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null && mounted) {
      if (kDebugMode) {
        print(result.predictions!.first.description);
      }
      setState(() {
        predictions = result.predictions!;
      });
    }
  }

  @override
  void dispose() {
    locFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return widget.userCheck
        ? Scaffold(
            //bottomNavigationBar: BottomBar(),
            backgroundColor: const Color.fromARGB(255, 232, 232, 232),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: size.height / 1.8,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        // color: Color.fromARGB(255, 118, 205, 117),
                        // borderRadius: BorderRadius.only(
                        //     bottomLeft: Radius.circular(160),
                        //     bottomRight: Radius.circular(160))
                        ),
                    child: Stack(children: [
                      Positioned(
                        left: 0,
                        top: 0,
                        right: 0,
                        child: SizedBox(
                          height: 500,
                          width: double.infinity,
                          child: SvgPicture.asset(
                            "assets/curve.svg",
                            color: const Color.fromRGBO(45, 197, 42, 1),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 20, top: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                  child: CircleAvatar(
                                    radius: 18,
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        Color.fromRGBO(45, 197, 42, 1),
                                    child: Text("en"),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 70,
                          ),
                          Text(
                            S.of(context).find_professionals,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 36,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            S
                                .of(context)
                                .that_bepass_tailors_especially_for_you,
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Catbut(),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 55),
                            child: TextFormField(
                              onChanged: (value) {
                                if (debounce?.isActive ?? false) {
                                  debounce!.cancel();
                                }
                                debounce = Timer(
                                    const Duration(milliseconds: 100), () {
                                  if (value.isNotEmpty) {
                                    //call place api
                                    autoCompleteSearch(value);
                                  } else {
                                    //shutup
                                    setState(() {
                                      predictions = [];
                                      position = null;
                                    });
                                  }
                                });
                              },
                              style: const TextStyle(color: Colors.white),
                              focusNode: locFocusNode,
                              controller: loc,
                              cursorColor: Colors.white,
                              decoration: InputDecoration(
                                prefixIcon: SizedBox(
                                  height: 5,
                                  width: 5,
                                  child: SvgPicture.asset("assets/pin_icon.svg",
                                      color: Colors.white,
                                      fit: BoxFit.scaleDown),
                                ),
                                suffixIcon: loc.text.isNotEmpty
                                    ? IconButton(
                                        icon: const Icon(Icons.clear_outlined,
                                            color: Colors.white),
                                        onPressed: () {
                                          predictions = [];
                                          loc.clear();
                                        },
                                      )
                                    : null,
                                hintText: S.of(context).location,
                                hintStyle: const TextStyle(
                                  color: Colors.white,
                                ),
                                fillColor: Colors.green[600],
                                filled: true,
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff2DC52A),
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: const BorderSide(
                                    color: Color(0xff2DC52A),
                                    width: 1.0,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: predictions.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            onTap: () async {
                              final placeId =
                                  predictions[index].placeId!.toString();
                              final details =
                                  await googlePlace.details.get(placeId);
                              if (details != null &&
                                  details.result != null &&
                                  mounted) {
                                if (locFocusNode.hasFocus) {
                                  setState(() {
                                    position = details.result;
                                    loc.text = details.result!.name.toString();
                                    predictions = [];
                                  });
                                }
                              }
                            },
                            leading: const CircleAvatar(
                                backgroundColor: AppColors.gradientGreen,
                                child:
                                    Icon(Icons.pin_drop, color: Colors.white)),
                            title: Text(
                                predictions[index].description.toString()));
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () {
                      // Navigator.of(context).pushNamed(Search.routeName);
                    },
                    child: Card(
                      elevation: 6.0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        height: 50,
                        width: 312,
                        decoration: BoxDecoration(
                            color: const Color.fromRGBO(45, 197, 42, 1),
                            borderRadius: BorderRadius.circular(10)),
                        child: const Center(
                          child: Text(
                            "find_professionals",
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height / 10,
                  ),
                  // TextButton(
                  //     onPressed: () {
                  //       context
                  //           .read<LanguageChangeProvider>()
                  //           .changeLocale("en");
                  //     },
                  //     child: Text("EN")),
                  // TextButton(
                  //     onPressed: () {
                  //       context
                  //           .read<LanguageChangeProvider>()
                  //           .changeLocale("he");
                  //     },
                  //     child: Text("HE"))
                ],
              ),
            ),
          )
        : SafeArea(
            child: Scaffold(
              //bottomNavigationBar: BottomBar(),
              backgroundColor: const Color.fromARGB(255, 232, 232, 232),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    VxArc(
                      arcType: VxArcType.CONVEX,
                      height: 50,
                      edge: VxEdge.BOTTOM,
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        color: const Color.fromRGBO(89, 223, 86, 1),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 20, top: 30),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 20,
                                    child: CircleAvatar(
                                      radius: 18,
                                      foregroundColor: Colors.white,
                                      backgroundColor:
                                          Color.fromRGBO(89, 223, 86, 1),
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
                              "Find Professionals",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 36,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              "That Be-Pass tailors especially for you",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
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
                    GestureDetector(
                      onTap: () {},
                      child: Card(
                        elevation: 6.0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Container(
                          height: 50,
                          width: 312,
                          decoration: BoxDecoration(
                              color: const Color.fromRGBO(89, 223, 86, 1),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.of(context)
                                //     .pushNamed(SearchingScreen.routeName);
                              },
                              child: const Text(
                                "Find Professionals",
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: size.height / 10,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(SignUpView());
                      },
                      child: const Text(
                        "Create an account",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(89, 223, 86, 1),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(const LoginView());
                      },
                      child: RichText(
                        text: const TextSpan(
                            text: 'Already have an account?',
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' Log in',
                                style: TextStyle(
                                    color: Color.fromRGBO(89, 223, 86, 1),
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
            ),
          );
  }
}
