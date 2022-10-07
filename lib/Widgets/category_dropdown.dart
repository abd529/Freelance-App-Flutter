// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../generated/l10n.dart';

class Catbut extends StatefulWidget {
  @override
  _CatbutState createState() => _CatbutState();
}

class _CatbutState extends State<Catbut> {
  final List<String> items = [
    'Web Development',
    'Mobile App Development',
    'Digital Marketing',
    'Video Editing',
    'Graphics Design',
    'Voice Over',
    'Content Writing',
    'NFT',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          dropdownElevation: 0,
          isExpanded: true,
          hint: Row(
            children: [
              SvgPicture.asset("assets/suitcase_icon.svg"),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  S.of(context).select_a_service_mobile,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (value) {
            setState(() {
              selectedValue = value as String;
            });
          },
          icon: const Icon(
            Icons.arrow_drop_down_outlined,
          ),
          iconSize: 34,
          iconEnabledColor: Colors.white,
          iconDisabledColor: Colors.white,
          buttonHeight: 68,
          buttonWidth: 300,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Colors.green[600],
          ),
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 300,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff2DC52A),
          ),
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          style: TextStyle(
            fontWeight: FontWeight.w100,
            fontFamily: GoogleFonts.poppins().fontFamily,
          ),
          // offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
