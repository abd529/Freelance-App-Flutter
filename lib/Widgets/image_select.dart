// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';
import 'package:be_pass/app_Colors.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:velocity_x/velocity_x.dart';

class ImageSel extends StatefulWidget {
  const ImageSel({Key? key}) : super(key: key);

  @override
  State<ImageSel> createState() => _ImageSelState();
}

class _ImageSelState extends State<ImageSel> {
  final ImagePicker _imagePicker = ImagePicker();
  File? imageFile;
  getImageFromGallery() async {
    var imageSource = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(imageSource!.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getImageFromGallery();
      },
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            border: Border.all(color: AppColors.greyText),
            borderRadius: BorderRadius.circular(8)),
        child: imageFile == null
            ? Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            style: BorderStyle.solid,
                            color: AppColors.gradientGreen)),
                    child: Icon(
                      Icons.add,
                      size: 30,
                      color: AppColors.gradientGreen,
                    ),
                  ).pOnly(top: 15, bottom: 5),
                  Text("Add Image")
                ],
              )
            : ClipRRect(
                borderRadius: BorderRadius.circular(08),
                child: Image.file(
                  imageFile!,
                  fit: BoxFit.cover,
                ),
              ),
      ),
    );
  }
}

class ProfileImgSelect extends StatefulWidget {
  const ProfileImgSelect({Key? key}) : super(key: key);

  @override
  State<ProfileImgSelect> createState() => _ProfileImgSelectState();
}

class _ProfileImgSelectState extends State<ProfileImgSelect> {
  final ImagePicker _imagePicker = ImagePicker();
  File? imageFile;
  getImageFromGallery() async {
    var imageSource = await _imagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      imageFile = File(imageSource!.path);
    });
  }

  void _removeImage() {
    setState(() {
      if (imageFile != null) {
        imageFile = null;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          getImageFromGallery();
        },
        child: Padding(
          padding: const EdgeInsets.fromLTRB(14, 10, 16, 20),
          child: imageFile == null
              ? DottedBorder(
                  borderType: BorderType.RRect,
                  radius: Radius.circular(5),
                  dashPattern: const [8, 8],
                  color: AppColors.greenishText,
                  strokeWidth: 2,
                  child: Align(
                      alignment: Alignment.center,
                      child: Icon(Icons.add, color: Colors.grey)))
              : ClipRRect(
                  borderRadius: BorderRadius.circular(08),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Image.file(
                          imageFile!,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          top: -5,
                          right: -5,
                          child: InkWell(
                            child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                ),
                                child: Icon(
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
                ),
        ));
  }
}
