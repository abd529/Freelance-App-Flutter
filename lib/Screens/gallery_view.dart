// ignore_for_file: prefer_const_literals_to_create_immutables, non_constant_identifier_names, unnecessary_brace_in_string_interps, avoid_print

import 'dart:io';

import 'package:be_pass/app_Colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import '../Widgets/custom_button_widget.dart';

class GalleryScreenView extends StatefulWidget {
  static const routeName = "gallery-screen";
  const GalleryScreenView({Key? key}) : super(key: key);

  @override
  State<GalleryScreenView> createState() => _GalleryScreenViewState();
}

class _GalleryScreenViewState extends State<GalleryScreenView> {
  List<Widget> certificateList = [];
  int galNum = 1;
  void _addCard() {
    setState(() {
      certificateList
          .add(certificateCard(context, certificateList.length, _removeCard));
    });
  }

  void _removeCard() {
    setState(() {
      if (certificateList.isNotEmpty) {
        certificateList.removeLast();
      }
    });
  }
  // @override
  // void initState() {
  //   super.initState();
  //   _addCard();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          icon: const Icon(Icons.arrow_back_ios),
                          onPressed: () {
                            Navigator.of(context).pop();
                          }),
                      const Text("Gallery",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          )),
                      const Padding(
                        padding: EdgeInsets.only(right: 70),
                        child: Text(""),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 1.3,
            width: double.infinity,
            child: ListView.builder(
              itemCount: certificateList.length,
              itemBuilder: (BuildContext context, int index) {
                return certificateCard(
                    context, certificateList.length, _removeCard);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: InkWell(
              child: SizedBox(
                height: 50,
                width: double.infinity,
                child: DottedBorder(
                  borderType: BorderType.RRect,
                  radius: const Radius.circular(5),
                  dashPattern: [10, 10],
                  color: AppColors.greenishText,
                  strokeWidth: 2,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Add gallery +",
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.greenishText),
                      )),
                ),
              ),
              onTap: () {
                _addCard();
              },
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 40,
            width: 148,
            child: CustomButton(
                    textColor: AppColors.white,
                    borderRadius: 16,
                    onTap: () {},
                    buttonText: "Save Changes")
                .pSymmetric(),
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }
}

Column certificateCard(BuildContext context, int Num, void Function() remove) {
  return Column(
    children: [
      // main container
      Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.greyText,
              ),
              borderRadius: BorderRadius.circular(10)),
          height: MediaQuery.of(context).size.height / 1.7,
          width: double.infinity,
          child:
              // inside main container where image and drop button placed
              Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Gallery $Num",
                  style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        color: AppColors.greyText,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ).pOnly(top: 20, left: 10),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Enter your username',
                  ),
                ),
              ),
              const Expanded(
                child: SelectMultiImage(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: remove,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text("Delete Category",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: AppColors.red, fontSize: 16),
                          )).pOnly(right: 8),
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  )
                ],
              )
            ],
          ),
        ).pOnly(top: 12),
      ),
      const SizedBox(height: 20)
    ],
  );
}

class SelectMultiImage extends StatefulWidget {
  const SelectMultiImage({Key? key}) : super(key: key);

  @override
  State<SelectMultiImage> createState() => _SelectMultiImageState();
}

class _SelectMultiImageState extends State<SelectMultiImage> {
  final ImagePicker imagePicker = ImagePicker();

  List<XFile>? imageFile = [];
  void getImageFromGallery() async {
    final List<XFile>? selectedImages = await imagePicker.pickMultiImage();
    setState(() {
      if (selectedImages != null) {
        imageFile!.addAll(selectedImages);
      }
    });
  }

  void _removeImage() {
    setState(() {
      if (imageFile!.isNotEmpty) {
        imageFile!.removeLast();
      }
    });
  }

  // void initState() {
  //   super.initState();
  //   imageFile!.add(XFile();
  // }
  @override
  Widget build(BuildContext context) {
    int length = imageFile!.length + 1;
    print('length === ${length}');
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 300,
          // color: AppColors.greyText,
          width: double.infinity,
          child: GridView.count(
            crossAxisCount: 4,
            children: List.generate(length, (index) {
              bool show = length == index + 1;
              return !show
                  ? SizedBox(
                      height: 120,
                      width: 120,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Stack(
                          children: [
                            Image.file(
                              File(
                                imageFile![index].path,
                              ),
                              height: 60,
                              width: 80,
                              fit: BoxFit.fill,
                            ),
                            Positioned(
                                top: 0,
                                right: 0,
                                child: InkWell(
                                  child: Container(
                                      height: 25,
                                      width: 25,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(100),
                                      ),
                                      child: const Icon(
                                        Icons.cancel_rounded,
                                        color: Colors.red,
                                      )
                                      // SvgPicture.asset(
                                      //   "assets/X.svg",
                                      //   color: Colors.red,
                                      // ),
                                      ),
                                  onTap: () {
                                    _removeImage();
                                  },
                                )),
                          ],
                        ),
                      ))
                  : GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(14, 10, 16, 20),
                        child: DottedBorder(
                            borderType: BorderType.RRect,
                            radius: const Radius.circular(5),
                            dashPattern: [10, 10],
                            color: AppColors.greenishText,
                            strokeWidth: 2,
                            child: const Align(
                                alignment: Alignment.center,
                                child: Icon(Icons.add, color: Colors.grey))),
                      ),
                      onTap: () {
                        getImageFromGallery();
                      },
                    );
            }),
          ),
        ),
      ],
    ));
  }
}
