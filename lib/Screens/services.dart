// prefer_const_literals_to_create_immutables, sort_child_properties_last, use_key_in_widget_constructors, camel_case_types, sized_box_for_whitespace

// ignore_for_file: use_key_in_widget_constructors, camel_case_types

import 'package:be_pass/Screens/working_hours.dart';
import 'package:flutter/material.dart';
import 'package:accordion/accordion.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Widgets/custom_button_widget.dart';
import '../Widgets/text_widget.dart';
import '../app_Colors.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServicesScreen extends StatefulWidget //__

{
  @override
  State<ServicesScreen> createState() => _ServicesScreenState();
  static const routeName = "services-screen";
}

final TextEditingController _protitle = TextEditingController();

Row rowTime(void Function() remove) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Row(children: [
        DropDownButton(),
        const SizedBox(width: 5),
        DropDownButton(),
      ]),
      IconButton(icon: const Icon(Icons.cancel), onPressed: remove)
    ],
  );
}

class _ServicesScreenState extends State<ServicesScreen> {
  final List<Widget> _rowList = [];
  void _addRowWidget() {
    setState(() {
      _rowList.add(rowTime(_removeRowWidget));
    });
  }

  void _removeRowWidget() {
    setState(() {
      if (_rowList.isNotEmpty) {
        _rowList.removeLast();
      }
    });
  }

  @override
  build(context) => Scaffold(
        backgroundColor: Colors.blueGrey[100],
        appBar: AppBar(
          title: const Text('Accordion'),
        ),
        body: Accordion(
          maxOpenSections: 5,
          rightIcon: const Icon(
            Icons.arrow_drop_down,
            color: AppColors.black,
          ),
          headerBorderRadius: 20,
          contentBorderColor: AppColors.gradientGreen,
          contentBorderRadius: 2,
          headerBackgroundColor: AppColors.white,
          headerPadding:
              const EdgeInsets.symmetric(vertical: 7, horizontal: 15),
          children: [
            AccordionSection(
              isOpen: false,
              header: Text(
                'Services',
                style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: AppColors.black, fontSize: 16),
                ),
              ),
              content: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Main Image").pSymmetric(h: 10),
                  const listcheckwid(),
                  Text(
                    "Type of Service",
                    style: GoogleFonts.poppins(
                      textStyle:
                          const TextStyle(color: AppColors.black, fontSize: 12),
                    ),
                  ).pSymmetric(h: 10),
                  Mytextwidget(
                      labeltext: "Ex. Personal Trainer",
                      controller: _protitle,
                      actionKeyboard: TextInputAction.next,
                      onSubmitField: () {},
                      textInputType: TextInputType.text,
                      hintText: "City, town"),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: TextFormField(
                      maxLines: 6,
                      decoration: InputDecoration(
                        hintText: "Description",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15.0),
                          borderSide: const BorderSide(
                            color: AppColors.greyText,
                            width: 1.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Textlist(_rowList, _addRowWidget),
                ],
              ),
            ),
            AccordionSection(
              isOpen: true,
              header: Text(
                'Services',
                style: GoogleFonts.poppins(
                  textStyle:
                      const TextStyle(color: AppColors.black, fontSize: 16),
                ),
              ),
              content: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Main Image").pSymmetric(h: 10),
                    const listcheckwid(),
                    Text(
                      "Type of Service",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: AppColors.black, fontSize: 12),
                      ),
                    ).pSymmetric(h: 10),
                    Mytextwidget(
                        labeltext: "Ex. Personal Trainer",
                        controller: _protitle,
                        actionKeyboard: TextInputAction.next,
                        onSubmitField: () {},
                        textInputType: TextInputType.text,
                        hintText: "City, town"),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        maxLines: 6,
                        decoration: InputDecoration(
                          hintText: "Description",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15.0),
                            borderSide: const BorderSide(
                              color: AppColors.greyText,
                              width: 1.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "Price",
                      style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: AppColors.black, fontSize: 12),
                      ),
                    ).pSymmetric(h: 10),
                    Textlist(_rowList, _addRowWidget)
                  ],
                ),
              ),
            )
          ],
        ),
      );
}

class listcheckwid extends StatelessWidget {
  const listcheckwid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                SizedBox(
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset("assets/splash-img.svg",
                        color: AppColors.gradientGreen)),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 94,
                            height: 29,
                            child: CustomButton(
                                borderRadius: 8,
                                borderColor: AppColors.gradientGreen,
                                buttonColor: AppColors.gradientGreen,
                                onTap: () {},
                                textColor: AppColors.white,
                                buttonText: "Upload"),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          SizedBox(
                            width: 94,
                            height: 29,
                            child: CustomButton(
                                borderRadius: 8,
                                borderColor: AppColors.gradientGreen,
                                buttonColor: AppColors.white,
                                onTap: () {},
                                textColor: AppColors.gradientGreen,
                                buttonText: "Chose"),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Allowed JPG,GIF,PNG, Max size of 800kb",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              color: AppColors.greyText, fontSize: 11),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

class Textlist extends StatefulWidget {
  final List _rowList;
  final void Function() _addWidget;
  const Textlist(this._rowList, this._addWidget);

  @override
  State<Textlist> createState() => _TextlistState();
}

class _TextlistState extends State<Textlist> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 200,
            child: ListView.builder(
                itemCount: widget._rowList.length,
                itemBuilder: (context, index) {
                  return widget._rowList[index];
                }),
            // child: ListView.builder(
            //     itemCount: 3,
            //     itemBuilder: (BuildContext context, int index) {
            //       return Padding(
            //         padding: const EdgeInsets.all(10.0),
            //         child: Row(
            //           children: [
            //             Container(
            //               width: 200,
            //               height: 40,
            //               child: TextFormField(
            //                 controller: _profession,
            //                 decoration: InputDecoration(
            //                   focusedBorder: OutlineInputBorder(
            //                       borderRadius:
            //                           BorderRadius.all(Radius.circular(5.0)),
            //                       borderSide:
            //                           BorderSide(color: AppColors.greyText)),
            //                   hintText: "Ex. Personal Trainer",
            //                   enabledBorder: OutlineInputBorder(
            //                     borderRadius: BorderRadius.circular(5.0),
            //                     borderSide: BorderSide(
            //                       color: AppColors.greyText,
            //                       width: 1.0,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               width: 20,
            //             ),
            //             Container(
            //               width: 60,
            //               height: 40,
            //               child: TextFormField(
            //                 controller: _price,
            //                 decoration: InputDecoration(
            //                   hintText: "Price",
            //                   focusedBorder: OutlineInputBorder(
            //                       borderRadius:
            //                           BorderRadius.all(Radius.circular(5.0)),
            //                       borderSide:
            //                           BorderSide(color: AppColors.greyText)),
            //                   enabledBorder: OutlineInputBorder(
            //                     borderRadius: BorderRadius.circular(5.0),
            //                     borderSide: BorderSide(
            //                       color: AppColors.greyText,
            //                       width: 1.0,
            //                     ),
            //                   ),
            //                 ),
            //               ),
            //             ),
            //             SizedBox(
            //               width: 10,
            //             ),
            //             GestureDetector(
            //               onTap: () {
            //                 _profession.clear();
            //                 _price.clear();
            //               },
            //               child: Container(
            //                 height: 30,
            //                 width: 30,
            //                 decoration: BoxDecoration(
            //                     color: AppColors.greyText,
            //                     borderRadius: BorderRadius.circular(20)),
            //                 child: Icon(Icons.close),
            //               ),
            //             )
            //           ],
            //         ),
            //       );
            //     }),
          ),
          GestureDetector(onTap: widget._addWidget, child: const Text("Add"))
        ],
      ),
    );
  }
}
