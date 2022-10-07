// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_final_fields, camel_case_types

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_Colors.dart';

class Mytextwidget extends StatelessWidget {
  final String labeltext;
  final TextEditingController controller;
  final TextInputAction actionKeyboard;
  final Function onSubmitField;
  final TextInputType textInputType;
  final String hintText;
  const Mytextwidget({
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
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        textInputAction: actionKeyboard,
        keyboardType: textInputType,
        decoration: InputDecoration(
          label: Text(labeltext),
          hintText: hintText,
          fillColor: Colors.white,
          focusColor: AppColors.black,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: AppColors.greyText,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.0),
            borderSide: BorderSide(
              color: AppColors.greyText,
              width: 1.0,
            ),
          ),
        ),
      ),
    );
  }
}

class profsel extends StatefulWidget {
  const profsel({Key? key}) : super(key: key);

  @override
  State<profsel> createState() => _profselState();
}

class _profselState extends State<profsel> {
  TextEditingController _textEditingController = TextEditingController();
  List<String> _values = [];
  List<bool> _selected = [];

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  Widget buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _values.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selected[i],
        label: Text(
          _values[i],
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
                color: AppColors.gradientGreen,
                fontWeight: FontWeight.w600,
                fontSize: 12),
          ),
        ),
        selectedColor: Color.fromARGB(83, 78, 228, 64),
        deleteIconColor: AppColors.gradientGreen,
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selected[i] = !_selected[i];
          });
        },
        onDeleted: () {
          _values.removeAt(i);
          _selected.removeAt(i);

          setState(() {
            _values = _values;
            _selected = _selected;
          });
        },
      );

      chips.add(actionChip);
    }

    return ListView(
      scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                label: Text("Professions"),
                hintText: "Chose Profession",
                fillColor: Colors.white,
                focusColor: AppColors.black,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: AppColors.greyText,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15.0),
                  borderSide: BorderSide(
                    color: AppColors.greyText,
                    width: 1.0,
                  ),
                ),
              ),
              controller: _textEditingController,
              onEditingComplete: () {
                _values.add(_textEditingController.text);
                _selected.add(true);
                _textEditingController.clear();

                setState(() {
                  _values = _values;
                  _selected = _selected;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 30,
              child: buildChips(),
            ),
          ],
        ));
  }
}
