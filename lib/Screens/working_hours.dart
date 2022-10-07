// prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace, prefer_interpolation_to_compose_strings, avoid_types_as_parameter_names, unused_element

// ignore_for_file: library_private_types_in_public_api, use_key_in_widget_constructors

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import '../app_Colors.dart';

class WorkingHours extends StatefulWidget {
  static const routeName = "working hours";
  const WorkingHours({Key? key});

  @override
  State<WorkingHours> createState() => _WorkingHoursState();
}

class _WorkingHoursState extends State<WorkingHours> {
  final List<Widget> _rowList = [];
  final List<Widget> _rowListSunDay = [];
  final List<Widget> _rowListMonDay = [];
  final List<Widget> _rowListTuesDay = [];
  final List<Widget> _rowListWedDay = [];
  final List<Widget> _rowListThursDay = [];
  final List<Widget> _rowListFriDay = [];
  final List<Widget> _rowListSatDay = [];

  void _addRowWidget() {
    setState(() {
      _rowList.add(rowTime(_removeRowWidget));
    });
  }

  void _addRowSunDay() {
    setState(() {
      _rowListSunDay.add(rowTime(_removeRowSunDay));
    });
  }

  void _addRowMonDay() {
    setState(() {
      _rowListMonDay.add(rowTime(_removeRowMonDay));
    });
  }

  void _addRowTuesDay() {
    setState(() {
      _rowListTuesDay.add(rowTime(_removeRowTuesDay));
    });
  }

  void _addRowWedDay() {
    setState(() {
      _rowListWedDay.add(rowTime(_removeRowWedDay));
    });
  }

  void _addRowThursDay() {
    setState(() {
      _rowListThursDay.add(rowTime(_removeRowThursDay));
    });
  }

  void _addRowFriDay() {
    setState(() {
      _rowListFriDay.add(rowTime(_removeRowFriDay));
    });
  }

  void _addRowSatDay() {
    setState(() {
      _rowListSatDay.add(rowTime(_removeRowSatDay));
    });
  }

  void _removeRowSunDay() {
    setState(() {
      if (_rowListSunDay.isNotEmpty) {
        _rowListSunDay.removeLast();
      }
    });
  }

  void _removeRowMonDay() {
    setState(() {
      if (_rowListMonDay.isNotEmpty) {
        _rowListMonDay.removeLast();
      }
    });
  }

  void _removeRowTuesDay() {
    setState(() {
      if (_rowListTuesDay.isNotEmpty) {
        _rowListTuesDay.removeLast();
      }
    });
  }

  void _removeRowWedDay() {
    setState(() {
      if (_rowListWedDay.isNotEmpty) {
        _rowListWedDay.removeLast();
      }
    });
  }

  void _removeRowThursDay() {
    setState(() {
      if (_rowListThursDay.isNotEmpty) {
        _rowListThursDay.removeLast();
      }
    });
  }

  void _removeRowFriDay() {
    setState(() {
      if (_rowListFriDay.isNotEmpty) {
        _rowListFriDay.removeLast();
      }
    });
  }

  void _removeRowSatDay() {
    setState(() {
      if (_rowListSatDay.isNotEmpty) {
        _rowListSatDay.removeLast();
      }
    });
  }

  void _removeRowWidget() {
    setState(() {
      if (_rowList.isNotEmpty) {
        _rowList.removeLast();
      }
    });
  }

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

  bool _toggleStateSun = true;
  bool _toggleStateMon = true;
  bool _toggleStateTues = true;
  bool _toggleStateWed = true;
  bool _toggleStateThurs = true;
  bool _toggleStateFri = true;
  bool _toggleStateSat = true;
  void _attemptChangeSun(bool newState) {
    setState(() {
      _toggleStateSun = !_toggleStateSun;
    });
  }

  void _attemptChangeMon(bool newState) {
    setState(() {
      _toggleStateMon = !_toggleStateMon;
    });
  }

  void _attemptChangeTues(bool newState) {
    setState(() {
      _toggleStateTues = !_toggleStateTues;
    });
  }

  void _attemptChangeWed(bool newState) {
    setState(() {
      _toggleStateWed = !_toggleStateWed;
    });
  }

  void _attemptChangeThurs(bool newState) {
    setState(() {
      _toggleStateThurs = !_toggleStateThurs;
    });
  }

  void _attemptChangeFri(bool newState) {
    setState(() {
      _toggleStateFri = !_toggleStateFri;
    });
  }

  void _attemptChangeSat(bool newState) {
    setState(() {
      _toggleStateSat = !_toggleStateSat;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 232, 232, 232),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: Row(
                      children: [
                        IconButton(
                            icon: const Icon(Icons.arrow_back_ios),
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        const Text("Add Working Hours",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width / 1.1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Colors.white,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Set Fixed Hours At Once",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Row(children: [
                              DropDownButton(),
                              const SizedBox(width: 5),
                              DropDownButton(),
                            ]),
                            IconButton(
                                icon: const Icon(Icons.cancel),
                                onPressed: () {})
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        height: 80,
                        child: ListView.builder(
                            primary: true,
                            itemCount: _rowList.length,
                            itemBuilder: (context, index) {
                              return _rowList[index];
                            }),
                      ),
                      GestureDetector(
                        onTap: _addRowWidget,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("Add Item",
                                      style: TextStyle(
                                          color: AppColors.gradientGreen)),
                                  Icon(
                                    Icons.add,
                                    color: AppColors.gradientGreen,
                                  )
                                ],
                              ),
                              GestureDetector(
                                  onTap: () {},
                                  child: const Text("Apply",
                                      style: TextStyle(
                                          color: AppColors.gradientGreen))),
                            ],
                          ),
                        ),
                      )
                    ]),
              ),
            ),
            const SizedBox(height: 10),
            dayCard(size, "Sunday", _rowListSunDay, _addRowSunDay,
                _toggleStateSun, _attemptChangeSun),
            const SizedBox(height: 10),
            dayCard(size, "Monday", _rowListMonDay, _addRowMonDay,
                _toggleStateMon, _attemptChangeMon),
            const SizedBox(height: 10),
            dayCard(size, "Tuesday", _rowListTuesDay, _addRowTuesDay,
                _toggleStateTues, _attemptChangeTues),
            const SizedBox(height: 10),
            dayCard(size, "Wednesday", _rowListWedDay, _addRowWedDay,
                _toggleStateWed, _attemptChangeWed),
            const SizedBox(height: 10),
            dayCard(size, "Thursday", _rowListThursDay, _addRowThursDay,
                _toggleStateThurs, _attemptChangeThurs),
            const SizedBox(height: 10),
            dayCard(size, "Friday", _rowListFriDay, _addRowFriDay,
                _toggleStateFri, _attemptChangeFri),
            const SizedBox(height: 10),
            dayCard(size, "Saturday", _rowListSatDay, _addRowSatDay,
                _toggleStateSat, _attemptChangeSat),
            // Container(
            //   width: size.width / 1.1,
            //   child: Card(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(15.0),
            //     ),
            //     color: Colors.white,
            //     child: Column(

            //     ),
            //     )

            // ),
          ],
        ),
      ),
    );
  }

  SizedBox dayCard(Size size, String day, List rowList, void Function() addFun,
      bool state, void Function(bool) toggle) {
    return SizedBox(
      width: size.width / 1.1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(day, style: const TextStyle(fontWeight: FontWeight.bold)),
                Switch(onChanged: toggle, value: state),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(children: [
                  DropDownButton(),
                  const SizedBox(width: 5),
                  DropDownButton(),
                ]),
                IconButton(icon: const Icon(Icons.cancel), onPressed: () {})
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 80,
            child: ListView.builder(
                primary: false,
                itemCount: rowList.length,
                itemBuilder: (context, index) {
                  return rowList[index];
                }),
          ),
          GestureDetector(
            onTap: addFun,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Add Item",
                          style: TextStyle(color: AppColors.gradientGreen)),
                      Icon(
                        Icons.add,
                        color: AppColors.gradientGreen,
                      )
                    ],
                  ),
                  GestureDetector(
                      onTap: () {},
                      child: const Text("Apply",
                          style: TextStyle(color: AppColors.gradientGreen))),
                ],
              ),
            ),
          )
        ]),
      ),
      // child: Accordion(
      //     maxOpenSections: 3,
      //     rightIcon: Icon(
      //       Icons.arrow_drop_down,
      //       color: AppColors.black,
      //     ),
      //     headerBorderRadius: 20,
      //     contentBorderColor: AppColors.gradientGreen,
      //     contentBorderRadius: 2,
      //     headerBackgroundColor: AppColors.white,
      //     headerPadding:
      //         EdgeInsets.symmetric(vertical: 7, horizontal: 15),
      //     children: [
      //       AccordionSection(
      //         isOpen: false,
      //         rightIcon: Icon(Icons.arrow_drop_down),
      //         leftIcon:
      //             const Icon(Icons.contact_page, color: Colors.white),
      //         header: Row(
      //           children: [
      //             Text('Sunday',
      //                 style: TextStyle(fontWeight: FontWeight.bold)),
      //             Switch(
      //               onChanged: _attemptChange,
      //               value: _toggleState,
      //             )
      //           ],
      //         ),
      //         content: Column(children: [
      //           Container(
      //             padding: EdgeInsets.symmetric(horizontal: 10),
      //             height: 80,
      //             child: Row(
      //               mainAxisAlignment: MainAxisAlignment.spaceAround,
      //               children: [
      //                 Row(children: [
      //                   DropDownButton(),
      //                   SizedBox(width: 5),
      //                   DropDownButton(),
      //                 ]),
      //                 IconButton(
      //                     icon: Icon(Icons.cancel), onPressed: () {})
      //               ],
      //             ),
      //           ),
      //           Container(
      //             padding: EdgeInsets.symmetric(horizontal: 10),
      //             height: 80,
      //             child: ListView.builder(
      //                 itemCount: _rowListDay.length,
      //                 itemBuilder: (context, index) {
      //                   return _rowListDay[index];
      //                 }),
      //           ),
      //           GestureDetector(
      //             onTap: _addRowDay,
      //             child: Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: Row(
      //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //                 children: [
      //                   Row(
      //                     mainAxisAlignment:
      //                         MainAxisAlignment.spaceBetween,
      //                     children: [
      //                       Text("Add Item",
      //                           style: TextStyle(
      //                               color: AppColors.gradientGreen)),
      //                       Icon(
      //                         Icons.add,
      //                         color: AppColors.gradientGreen,
      //                       )
      //                     ],
      //                   ),
      //                   GestureDetector(
      //                       onTap: () {},
      //                       child: Text("Apply",
      //                           style: TextStyle(
      //                               color: AppColors.gradientGreen))),
      //                 ],
      //               ),
      //             ),
      //           )
      //         ]),
      //         headerPadding: EdgeInsets.all(10),
      //       ),
      //     ]),
    );
  }
}

class DropDownButton extends StatefulWidget {
  @override
  _DropDownButtonState createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  final List<String> items = List.generate(24, (index) => "$index:00");
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2(
          isExpanded: true,
          hint: const Text(
            "0:00",
            style: TextStyle(color: Colors.black),
          ),
          items: items
              .map((item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 6, 6, 6),
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
          iconEnabledColor: const Color.fromARGB(255, 0, 0, 0),
          iconDisabledColor: const Color.fromARGB(255, 8, 8, 8),
          buttonHeight: 35,
          buttonWidth: 120,
          buttonPadding: const EdgeInsets.only(left: 14, right: 14),
          buttonDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black26,
            ),
            color: Colors.white,
          ),
          buttonElevation: 0,
          itemHeight: 20,
          itemPadding: const EdgeInsets.only(left: 14, right: 14),
          dropdownMaxHeight: 100,
          dropdownWidth: 200,
          dropdownPadding: null,
          dropdownDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            //color: Color(0xff2DC52A),
          ),
          dropdownElevation: 4,
          scrollbarRadius: const Radius.circular(40),
          scrollbarThickness: 6,
          scrollbarAlwaysShow: true,
          // offset: const Offset(-20, 0),
        ),
      ),
    );
  }
}
