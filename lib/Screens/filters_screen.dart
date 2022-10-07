// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../app_Colors.dart';

class FilterScreen extends StatefulWidget {
  static const routeName = "filters";
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

var selectedRange = const RangeValues(5, 50);

class _FilterScreenState extends State<FilterScreen> {
  final TextEditingController _textEditingControllerLoc =
      TextEditingController();
  final TextEditingController _textEditingControllerPro =
      TextEditingController();
  final TextEditingController _textEditingControllerSkill =
      TextEditingController();
  //TextEditingController _textArea = new TextEditingController();
  List<String> _valuesLoc = [];
  List<bool> _selectedLoc = [];
  List<String> _valuesPro = [];
  List<bool> _selectedPro = [];
  List<String> _valuesSkill = [];
  List<bool> _selectedSkill = [];
  List<String> dropDownList = ["op 1", "op 2", "op 3"];
  dynamic selectedValue;
  double ratingNum = 3;
  bool ageValue1 = false;
  bool ageValue2 = false;
  bool ageValue3 = false;
  bool ageValue4 = false;
  bool ageValue5 = false;
  bool gValueM = false;
  bool gValueF = false;
  bool whValueM = false;
  bool whValueA = false;
  bool whValueE = false;
  bool whValueN = false;
  @override
  void dispose() {
    _textEditingControllerLoc.dispose();
    _textEditingControllerPro.dispose();
    _textEditingControllerSkill.dispose();
    super.dispose();
  }

  double rateNum(double num) {
    if (num == ratingNum) {
      return ratingNum;
    } else {
      setState(() {
        ratingNum = num;
      });
      return ratingNum;
    }
  }

  //Location
  Widget buildChipsLoc() {
    List<Widget> chips = [];

    for (int i = 0; i < _valuesLoc.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selectedLoc[i],
        label: Text(
          _valuesLoc[i],
          style: const TextStyle(
              color: AppColors.gradientGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        selectedColor: const Color.fromARGB(83, 78, 228, 64),
        deleteIconColor: AppColors.gradientGreen,
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selectedLoc[i] = !_selectedLoc[i];
          });
        },
        onDeleted: () {
          _valuesLoc.removeAt(i);
          _selectedLoc.removeAt(i);

          setState(() {
            _valuesLoc = _valuesLoc;
            _selectedLoc = _selectedLoc;
          });
        },
      );

      chips.add(actionChip);
    }
    return GridView(
      // This next line does the trick.
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2,
          crossAxisSpacing: 5,
          mainAxisExtent: 50),
      //scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  //Profession
  Widget buildChipsPro() {
    List<Widget> chips = [];

    for (int i = 0; i < _valuesPro.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selectedPro[i],
        label: Text(
          _valuesPro[i],
          style: const TextStyle(
              color: AppColors.gradientGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        selectedColor: const Color.fromARGB(83, 78, 228, 64),
        deleteIconColor: AppColors.gradientGreen,
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selectedPro[i] = !_selectedPro[i];
          });
        },
        onDeleted: () {
          _valuesPro.removeAt(i);
          _selectedPro.removeAt(i);

          setState(() {
            _valuesPro = _valuesPro;
            _selectedPro = _selectedPro;
          });
        },
      );

      chips.add(actionChip);
    }
    return GridView(
      // This next line does the trick.
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2,
          crossAxisSpacing: 5,
          mainAxisExtent: 50),
      //scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  //Skills
  Widget buildChipsSkill() {
    List<Widget> chips = [];

    for (int i = 0; i < _valuesSkill.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selectedSkill[i],
        label: Text(
          _valuesSkill[i],
          style: const TextStyle(
              color: AppColors.gradientGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12),
        ),
        selectedColor: const Color.fromARGB(83, 78, 228, 64),
        deleteIconColor: AppColors.gradientGreen,
        elevation: 10,
        pressElevation: 5,
        shadowColor: Colors.teal,
        onPressed: () {
          setState(() {
            _selectedSkill[i] = !_selectedSkill[i];
          });
        },
        onDeleted: () {
          _valuesSkill.removeAt(i);
          _selectedSkill.removeAt(i);

          setState(() {
            _valuesSkill = _valuesSkill;
            _selectedSkill = _selectedSkill;
          });
        },
      );

      chips.add(actionChip);
    }
    return GridView(
      // This next line does the trick.
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 2,
          crossAxisSpacing: 5,
          mainAxisExtent: 50),
      //scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                const SizedBox(height: 20),
                Row(
                  children: [
                    IconButton(
                        icon: const Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    const Text("Filters",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Price Range",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    RangeSlider(
                      values: selectedRange,
                      onChanged: (RangeValues newRange) {
                        setState(() {
                          selectedRange = newRange;
                        });
                      },
                      divisions: 10,
                      min: 0.0,
                      max: 100,
                      labels: RangeLabels(
                        "${selectedRange.start}\$",
                        "${selectedRange.end}\$",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("0\$"),
                        const Text("100\$"),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Location",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              width: double.infinity,
              child: DropdownButtonHideUnderline(
                child: DropdownButton2<String>(
                  items: dropDownList
                      .map((dropDownList) => DropdownMenuItem<String>(
                            value: dropDownList,
                            child: Text(
                              dropDownList,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ))
                      .toList(),
                  hint: const Text("City or State"),
                  buttonPadding: const EdgeInsets.symmetric(horizontal: 20),
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      //selectedValue = value;
                      _valuesLoc.add(value as String);
                      _selectedLoc.add(true);
                    });
                  },
                  buttonElevation: 0,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 300,
                  dropdownPadding: null,
                  dropdownDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    color: Colors.white,
                  ),
                  dropdownElevation: 0,
                  scrollbarRadius: const Radius.circular(40),
                  scrollbarThickness: 6,
                  scrollbarAlwaysShow: true,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          SizedBox(
            height: _valuesLoc.isEmpty ? 5 : 100,
            child: buildChipsLoc(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Profession",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: const Text("Search profession"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 1.0,
                    ),
                  ),
                ),
                controller: _textEditingControllerPro,
                onEditingComplete: () {
                  _valuesPro.add(_textEditingControllerPro.text);
                  _selectedPro.add(true);
                  _textEditingControllerPro.clear();

                  setState(() {
                    _valuesPro = _valuesPro;
                    _selectedPro = _selectedPro;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: _valuesPro.isEmpty ? 5 : 100,
            child: buildChipsPro(),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Skills",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextFormField(
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  label: const Text("Search Skills"),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.0),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 1.0,
                    ),
                  ),
                ),
                controller: _textEditingControllerSkill,
                onEditingComplete: () {
                  _valuesSkill.add(_textEditingControllerSkill.text);
                  _selectedSkill.add(true);
                  _textEditingControllerSkill.clear();

                  setState(() {
                    _valuesSkill = _valuesSkill;
                    _selectedSkill = _selectedSkill;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: _valuesSkill.isEmpty ? 5 : 100,
            child: buildChipsSkill(),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Rating",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    rateNum(rating);
                  },
                ),
                Text(ratingNum.toString()),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Age",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: ageValue1,
                      onChanged: (bool? value) {
                        setState(() {
                          ageValue1 = !ageValue1;
                        });
                      },
                    ),
                    const Text("15 - 20"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ageValue2,
                      onChanged: (bool? value) {
                        setState(() {
                          ageValue2 = !ageValue2;
                        });
                      },
                    ),
                    const Text("20 -30"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ageValue3,
                      onChanged: (bool? value) {
                        setState(() {
                          ageValue3 = !ageValue3;
                        });
                      },
                    ),
                    const Text("30 -40"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ageValue4,
                      onChanged: (bool? value) {
                        setState(() {
                          ageValue4 = !ageValue4;
                        });
                      },
                    ),
                    const Text("40-50"),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: ageValue5,
                      onChanged: (bool? value) {
                        setState(() {
                          ageValue5 = !ageValue5;
                        });
                      },
                    ),
                    const Text("50+"),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Gender",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Checkbox(
                    value: gValueM,
                    onChanged: (bool? value) {
                      setState(() {
                        gValueM = !gValueM;
                      });
                    },
                  ),
                  const Text("Male"),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    value: gValueF,
                    onChanged: (bool? value) {
                      setState(() {
                        gValueF = !gValueF;
                      });
                    },
                  ),
                  const Text("Female"),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text("Working Hours",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16))),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: whValueM,
                        onChanged: (bool? value) {
                          setState(() {
                            whValueM = !whValueM;
                          });
                        },
                      ),
                      const Text("Morning"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: whValueA,
                        onChanged: (bool? value) {
                          setState(() {
                            whValueA = !whValueA;
                          });
                        },
                      ),
                      const Text("Afternoon"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: whValueE,
                        onChanged: (bool? value) {
                          setState(() {
                            whValueE = !whValueE;
                          });
                        },
                      ),
                      const Text("Evening"),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: whValueN,
                        onChanged: (bool? value) {
                          setState(() {
                            whValueN = !whValueN;
                          });
                        },
                      ),
                      const Text("Night"),
                    ],
                  ),
                ],
              )),
          const SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
