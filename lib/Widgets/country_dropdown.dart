// ignore_for_file: library_private_types_in_public_api, depend_on_referenced_packages, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

class Countbut extends StatefulWidget {
  @override
  _CountbutState createState() => _CountbutState();
}

class _CountbutState extends State<Countbut> {
  final List<String> items = [
    'United States',
    'Pakistan',
    'India',
    'Israel',
    'Italy',
    'Panama',
    'China',
    'UK',
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: Row(
            children: const [
              Icon(
                Icons.location_pin,
                size: 16,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'All Countries',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
                        fontWeight: FontWeight.bold,
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
          buttonHeight: 48,
          buttonWidth: 300,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Color(0xff2DC52A),
          ),
          buttonElevation: 2,
          itemHeight: 40,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 200,
          dropdownWidth: 300,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: Color(0xff2DC52A),
          ),
          dropdownElevation: 8,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          // offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
