// ignore_for_file: avoid_print, non_constant_identifier_names, unused_element

import 'package:be_pass/Screens/changePassword.dart';
import 'package:be_pass/app_Colors.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class WH extends StatefulWidget {
  const WH({Key? key}) : super(key: key);

  @override
  State<WH> createState() => _WHState();
}

class _WHState extends State<WH> {
  bool monBT = false;
  bool tueBT = false;
  bool wedBT = false;
  bool thurBT = false;
  bool friBT = false;
  bool satBT = false;
  bool sunBT = false;
  bool monSwitch = false;
  bool tueSwitch = false;
  bool wedSwitch = false;
  bool thurSwitch = false;
  bool friSwitch = false;
  bool satSwitch = false;
  bool sunSwitch = false;
  String startSelectedMon = "0:00";
  String startSelectedTue = "0:00";
  String startSelectedWed = "0:00";
  String startSelectedThur = "0:00";
  String startSelectedFri = "0:00";
  String startSelectedSat = "0:00";
  String startSelectedSun = "0:00";
  String endSelectedMon = "0:00";
  String endSelectedTue = "0:00";
  String endSelectedWed = "0:00";
  String endSelectedThur = "0:00";
  String endSelectedFri = "0:00";
  String endSelectedSat = "0:00";
  String endSelectedSun = "0:00";
  final List<String> items = List.generate(25, (index) => "$index:00");
  List<Map> mondayWH = [];
  List<Map> tuesdayWH = [];
  List<Map> wednesdayWH = [];
  List<Map> thursdayWH = [];
  List<Map> fridayWH = [];
  List<Map> saturdayWH = [];
  List<Map> sundayWH = [];

  void _addMonWH(String startTime, String endTime) {
    mondayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(mondayWH);
  }

  void _addTueWH(String startTime, String endTime) {
    tuesdayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(tuesdayWH);
  }

  void _addWedWH(String startTime, String endTime) {
    wednesdayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(wednesdayWH);
  }

  void _addThurWH(String startTime, String endTime) {
    thursdayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(thursdayWH);
  }

  void _addFriWH(String startTime, String endTime) {
    fridayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(fridayWH);
  }

  void _addSatWH(String startTime, String endTime) {
    saturdayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(saturdayWH);
  }

  void _addSunWH(String startTime, String endTime) {
    sundayWH.add({"StartTime": startTime, "EndTime": endTime});
    print(sundayWH);
  }

  // void _removeMonTimeRow() {
  //   setState(() {
  //     if (monTimeRows.isNotEmpty) {
  //       monTimeRows.removeLast();
  //     }
  //     index--;
  //   });
  // }

  void _attemptChangeMon(bool newState) {
    setState(() {
      startSelectedMon = "0:00";
      endSelectedMon = "0:00";
      mondayWH = [];
      monSwitch = !monSwitch;
    });
  }

  void _attemptChangeTue(bool newState) {
    setState(() {
      startSelectedTue = "0:00";
      endSelectedTue = "0:00";
      tuesdayWH = [];
      tueSwitch = !tueSwitch;
    });
  }

  void _attemptChangeWed(bool newState) {
    setState(() {
      startSelectedWed = "0:00";
      endSelectedWed = "0:00";
      wednesdayWH = [];
      wedSwitch = !wedSwitch;
    });
  }

  void _attemptChangeThur(bool newState) {
    setState(() {
      startSelectedThur = "0:00";
      endSelectedThur = "0:00";
      thursdayWH = [];
      thurSwitch = !thurSwitch;
    });
  }

  void _attemptChangeFri(bool newState) {
    setState(() {
      startSelectedFri = "0:00";
      endSelectedFri = "0:00";
      fridayWH = [];
      friSwitch = !friSwitch;
    });
  }

  void _attemptChangeSat(bool newState) {
    setState(() {
      startSelectedSat = "0:00";
      endSelectedSat = "0:00";
      saturdayWH = [];
      satSwitch = !satSwitch;
    });
  }

  void _attemptChangeSun(bool newState) {
    setState(() {
      startSelectedSun = "0:00";
      endSelectedSun = "0:00";
      sundayWH = [];
      sunSwitch = !sunSwitch;
    });
  }

  @override
  Widget build(BuildContext context) {
    // void _addMonTimeRow(int num) {
    //   setState(() {
    //     monTimeRows.add(timeSlot(
    //       _removeMonTimeRow,
    //     ));
    //     index++;
    //   });
    // }

    // List<Widget> rowList = [
    //   timeSlot(_removeMonTimeRow),
    //   timeSlot2(_removeMonTimeRow)
    // ];

    return Scaffold(
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.upcoming),
            onPressed: () {
              _addMonWH(startSelectedMon, endSelectedMon);
              _addTueWH(startSelectedTue, endSelectedTue);
              _addWedWH(startSelectedWed, endSelectedWed);
              _addThurWH(startSelectedThur, endSelectedThur);
              _addFriWH(startSelectedFri, endSelectedFri);
              _addSatWH(startSelectedSat, endSelectedSat);
              _addSunWH(startSelectedSun, endSelectedSun);
            }),
        backgroundColor: const Color.fromARGB(255, 232, 232, 232),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Header(
                  Icons.arrow_back_ios_new_rounded,
                  "Working Hours",
                  "",
                ),
              ),
              MonDayCard(),
              TueDayCard(),
              WedDayCard(),
            ],
          ),
        ));
  }

  Padding MonDayCard() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Monday"),
                    Switch(value: monSwitch, onChanged: _attemptChangeMon),
                    monBT == true && monSwitch == true
                        ? Container(
                            decoration: BoxDecoration(
                                color: AppColors.gradientGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              color: Colors.white,
                              icon: const Icon(Icons.keyboard_arrow_up_rounded),
                              onPressed: () {
                                setState(() {
                                  monBT = !monBT;
                                });
                              },
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_rounded),
                              onPressed: () {
                                setState(() {
                                  monBT = !monBT;
                                });
                              },
                            ),
                          )
                  ],
                ),
              ),
              monBT == true && monSwitch == true
                  ? SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  // hint: Text(
                                  //   startSelectedMon,
                                  //   style: const TextStyle(
                                  //       color: Colors.black),
                                  // ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 6, 6),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: startSelectedMon,
                                  onChanged: (value) {
                                    setState(() {
                                      startSelectedMon = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  iconDisabledColor:
                                      const Color.fromARGB(255, 8, 8, 8),
                                  buttonHeight: 35,
                                  buttonWidth: 120,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.white,
                                  ),
                                  buttonElevation: 0,
                                  itemHeight: 20,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                              const SizedBox(
                                width: 15,
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  // hint: Text(
                                  //   endSelectedMon,
                                  //   style: TextStyle(
                                  //       color: Colors.black),
                                  // ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 6, 6),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: endSelectedMon,
                                  onChanged: (value) {
                                    setState(() {
                                      endSelectedMon = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  iconDisabledColor:
                                      const Color.fromARGB(255, 8, 8, 8),
                                  buttonHeight: 35,
                                  buttonWidth: 120,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.white,
                                  ),
                                  buttonElevation: 0,
                                  itemHeight: 20,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                            ],
                          ),
                          // Column(children: rowList),
                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: rowList.length,
                          //     itemBuilder:
                          //         (BuildContext context, int index) {
                          //       return timeSlot(_removeMonTimeRow);
                          //     },
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       TextButton(
                          //           onPressed: () {
                          //             _addMonTimeRow(widgetHand);
                          //           },
                          //           child: Row(
                          //             children: const [
                          //               Text("Add hours"),
                          //               Icon(Icons.add),
                          //             ],
                          //           )),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ))
                  : const SizedBox(
                      height: 10,
                    )
            ],
          )),
    );
  }

  Padding TueDayCard() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Tuesday"),
                    Switch(value: tueSwitch, onChanged: _attemptChangeTue),
                    tueBT == true && tueSwitch == true
                        ? Container(
                            decoration: BoxDecoration(
                                color: AppColors.gradientGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              color: Colors.white,
                              icon: const Icon(Icons.keyboard_arrow_up_rounded),
                              onPressed: () {
                                setState(() {
                                  tueBT = !tueBT;
                                });
                              },
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_rounded),
                              onPressed: () {
                                setState(() {
                                  tueBT = !tueBT;
                                });
                              },
                            ),
                          )
                  ],
                ),
              ),
              tueBT == true && tueSwitch == true
                  ? SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  // hint: Text(
                                  //   startSelectedMon,
                                  //   style: const TextStyle(
                                  //       color: Colors.black),
                                  // ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 6, 6),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: startSelectedTue,
                                  onChanged: (value) {
                                    setState(() {
                                      startSelectedTue = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  iconDisabledColor:
                                      const Color.fromARGB(255, 8, 8, 8),
                                  buttonHeight: 35,
                                  buttonWidth: 120,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.white,
                                  ),
                                  buttonElevation: 0,
                                  itemHeight: 20,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                              const SizedBox(
                                width: 15,
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  // hint: Text(
                                  //   endSelectedMon,
                                  //   style: TextStyle(
                                  //       color: Colors.black),
                                  // ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 6, 6),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: endSelectedTue,
                                  onChanged: (value) {
                                    setState(() {
                                      endSelectedTue = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  iconDisabledColor:
                                      const Color.fromARGB(255, 8, 8, 8),
                                  buttonHeight: 35,
                                  buttonWidth: 120,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.white,
                                  ),
                                  buttonElevation: 0,
                                  itemHeight: 20,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                            ],
                          ),
                          // Column(children: rowList),
                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: rowList.length,
                          //     itemBuilder:
                          //         (BuildContext context, int index) {
                          //       return timeSlot(_removeMonTimeRow);
                          //     },
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       TextButton(
                          //           onPressed: () {
                          //             _addMonTimeRow(widgetHand);
                          //           },
                          //           child: Row(
                          //             children: const [
                          //               Text("Add hours"),
                          //               Icon(Icons.add),
                          //             ],
                          //           )),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ))
                  : const SizedBox(
                      height: 10,
                    )
            ],
          )),
    );
  }

  Padding WedDayCard() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text("Wednesday"),
                    Switch(value: wedSwitch, onChanged: _attemptChangeWed),
                    wedBT == true && wedSwitch == true
                        ? Container(
                            decoration: BoxDecoration(
                                color: AppColors.gradientGreen,
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              color: Colors.white,
                              icon: const Icon(Icons.keyboard_arrow_up_rounded),
                              onPressed: () {
                                setState(() {
                                  wedBT = !wedBT;
                                });
                              },
                            ),
                          )
                        : Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10)),
                            child: IconButton(
                              icon:
                                  const Icon(Icons.keyboard_arrow_down_rounded),
                              onPressed: () {
                                setState(() {
                                  wedBT = !wedBT;
                                });
                              },
                            ),
                          )
                  ],
                ),
              ),
              wedBT == true && wedSwitch == true
                  ? SizedBox(
                      height: 220,
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  // hint: Text(
                                  //   startSelectedMon,
                                  //   style: const TextStyle(
                                  //       color: Colors.black),
                                  // ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 6, 6),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: startSelectedWed,
                                  onChanged: (value) {
                                    setState(() {
                                      startSelectedWed = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  iconDisabledColor:
                                      const Color.fromARGB(255, 8, 8, 8),
                                  buttonHeight: 35,
                                  buttonWidth: 120,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.white,
                                  ),
                                  buttonElevation: 0,
                                  itemHeight: 20,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                              const SizedBox(
                                width: 15,
                              ),
                              DropdownButtonHideUnderline(
                                child: DropdownButton2(
                                  isExpanded: true,
                                  // hint: Text(
                                  //   endSelectedMon,
                                  //   style: TextStyle(
                                  //       color: Colors.black),
                                  // ),
                                  items: items
                                      .map((item) => DropdownMenuItem<String>(
                                            value: item,
                                            child: Text(
                                              item,
                                              style: const TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 6, 6, 6),
                                              ),
                                              overflow: TextOverflow.ellipsis,
                                            ),
                                          ))
                                      .toList(),
                                  value: endSelectedWed,
                                  onChanged: (value) {
                                    setState(() {
                                      endSelectedWed = value as String;
                                    });
                                  },
                                  icon: const Icon(
                                    Icons.arrow_drop_down_outlined,
                                  ),
                                  iconSize: 34,
                                  iconEnabledColor:
                                      const Color.fromARGB(255, 0, 0, 0),
                                  iconDisabledColor:
                                      const Color.fromARGB(255, 8, 8, 8),
                                  buttonHeight: 35,
                                  buttonWidth: 120,
                                  buttonPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
                                  buttonDecoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(
                                      color: Colors.black26,
                                    ),
                                    color: Colors.white,
                                  ),
                                  buttonElevation: 0,
                                  itemHeight: 20,
                                  itemPadding: const EdgeInsets.only(
                                      left: 14, right: 14),
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
                            ],
                          ),
                          // Column(children: rowList),
                          // Expanded(
                          //   child: ListView.builder(
                          //     itemCount: rowList.length,
                          //     itemBuilder:
                          //         (BuildContext context, int index) {
                          //       return timeSlot(_removeMonTimeRow);
                          //     },
                          //   ),
                          // ),
                          // Padding(
                          //   padding: const EdgeInsets.all(8.0),
                          //   child: Row(
                          //     mainAxisAlignment:
                          //         MainAxisAlignment.spaceBetween,
                          //     children: [
                          //       TextButton(
                          //           onPressed: () {
                          //             _addMonTimeRow(widgetHand);
                          //           },
                          //           child: Row(
                          //             children: const [
                          //               Text("Add hours"),
                          //               Icon(Icons.add),
                          //             ],
                          //           )),
                          //     ],
                          //   ),
                          // ),
                        ],
                      ))
                  : const SizedBox(
                      height: 10,
                    )
            ],
          )),
    );
  }
}

  // Row timeSlot(
  //   Function() removeFun,
  // ) {
  //   return Row(
  //     children: [
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         children: [
  //           DropdownButtonHideUnderline(
  //             child: DropdownButton2(
  //               isExpanded: true,
  //               // hint: Text(
  //               //   "0:00",
  //               //   style: TextStyle(color: Colors.black),
  //               // ),
  //               items: items
  //                   .map((item) => DropdownMenuItem<String>(
  //                         value: item,
  //                         child: Text(
  //                           item,
  //                           style: const TextStyle(
  //                             fontSize: 15,
  //                             fontWeight: FontWeight.bold,
  //                             color: Color.fromARGB(255, 6, 6, 6),
  //                           ),
  //                           overflow: TextOverflow.ellipsis,
  //                         ),
  //                       ))
  //                   .toList(),
  //               value: start2,
  //               onChanged: (value) {
  //                 setState(() {
  //                   start2 = value as String;
  //                 });
  //               },
  //               icon: const Icon(
  //                 Icons.arrow_drop_down_outlined,
  //               ),
  //               iconSize: 34,
  //               iconEnabledColor: Color.fromARGB(255, 0, 0, 0),
  //               iconDisabledColor: Color.fromARGB(255, 8, 8, 8),
  //               buttonHeight: 35,
  //               buttonWidth: 120,
  //               buttonPadding: const EdgeInsets.only(left: 14, right: 14),
  //               buttonDecoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(5),
  //                 border: Border.all(
  //                   color: Colors.black26,
  //                 ),
  //                 color: Colors.white,
  //               ),
  //               buttonElevation: 0,
  //               itemHeight: 20,
  //               itemPadding: const EdgeInsets.only(left: 14, right: 14),
  //               dropdownMaxHeight: 100,
  //               dropdownWidth: 200,
  //               dropdownPadding: null,
  //               dropdownDecoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(5),
  //                 //color: Color(0xff2DC52A),
  //               ),
  //               dropdownElevation: 4,
  //               scrollbarRadius: const Radius.circular(40),
  //               scrollbarThickness: 6,
  //               scrollbarAlwaysShow: true,
  //               // offset: const Offset(-20, 0),
  //             ),
  //           ),
  //           const SizedBox(
  //             width: 15,
  //           ),
  //           DropdownButtonHideUnderline(
  //             child: DropdownButton2(
  //               isExpanded: true,
  //               // hint: Text(
  //               //   endSelectedMon,
  //               //   style: TextStyle(color: Colors.black),
  //               // ),
  //               items: items
  //                   .map((item) => DropdownMenuItem<String>(
  //                         value: item,
  //                         child: Text(
  //                           item,
  //                           style: const TextStyle(
  //                             fontSize: 15,
  //                             fontWeight: FontWeight.bold,
  //                             color: Color.fromARGB(255, 6, 6, 6),
  //                           ),
  //                           overflow: TextOverflow.ellipsis,
  //                         ),
  //                       ))
  //                   .toList(),
  //               value: end2,
  //               onChanged: (value) {
  //                 setState(() {
  //                   end2 = value as String;
  //                 });
  //               },
  //               icon: const Icon(
  //                 Icons.arrow_drop_down_outlined,
  //               ),
  //               iconSize: 34,
  //               iconEnabledColor: Color.fromARGB(255, 0, 0, 0),
  //               iconDisabledColor: Color.fromARGB(255, 8, 8, 8),
  //               buttonHeight: 35,
  //               buttonWidth: 120,
  //               buttonPadding: const EdgeInsets.only(left: 14, right: 14),
  //               buttonDecoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(5),
  //                 border: Border.all(
  //                   color: Colors.black26,
  //                 ),
  //                 color: Colors.white,
  //               ),
  //               buttonElevation: 0,
  //               itemHeight: 20,
  //               itemPadding: const EdgeInsets.only(left: 14, right: 14),
  //               dropdownMaxHeight: 100,
  //               dropdownWidth: 200,
  //               dropdownPadding: null,
  //               dropdownDecoration: BoxDecoration(
  //                 borderRadius: BorderRadius.circular(5),
  //                 //color: Color(0xff2DC52A),
  //               ),
  //               dropdownElevation: 4,
  //               scrollbarRadius: const Radius.circular(40),
  //               scrollbarThickness: 6,
  //               scrollbarAlwaysShow: true,
  //               // offset: const Offset(-20, 0),
  //             ),
  //           ),
  //         ],
  //       ),
  //       IconButton(
  //           icon: const Icon(Icons.cancel),
  //           onPressed: () {
  //             monMap["StartTime"]!.isNotEmpty
  //                 ? monMap["StartTime"]?.removeLast()
  //                 : null;
  //             monMap["EndTime"]!.isNotEmpty
  //                 ? monMap["EndTime"]?.removeLast()
  //                 : null;
  //             removeFun();
  //             print(monMap);
  //           },
  //           color: Colors.red)
  //     ],
  //   );
  // }

//   Row timeSlot2(
//     Function() removeFun,
//   ) {
//     return Row(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             DropdownButtonHideUnderline(
//               child: DropdownButton2(
//                 isExpanded: true,
//                 // hint: Text(
//                 //   "0:00",
//                 //   style: TextStyle(color: Colors.black),
//                 // ),
//                 items: items
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Color.fromARGB(255, 6, 6, 6),
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ))
//                     .toList(),
//                 value: start3,
//                 onChanged: (value) {
//                   setState(() {
//                     start3 = value as String;
//                   });
//                 },
//                 icon: const Icon(
//                   Icons.arrow_drop_down_outlined,
//                 ),
//                 iconSize: 34,
//                 iconEnabledColor: Color.fromARGB(255, 0, 0, 0),
//                 iconDisabledColor: Color.fromARGB(255, 8, 8, 8),
//                 buttonHeight: 35,
//                 buttonWidth: 120,
//                 buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//                 buttonDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(
//                     color: Colors.black26,
//                   ),
//                   color: Colors.white,
//                 ),
//                 buttonElevation: 0,
//                 itemHeight: 20,
//                 itemPadding: const EdgeInsets.only(left: 14, right: 14),
//                 dropdownMaxHeight: 100,
//                 dropdownWidth: 200,
//                 dropdownPadding: null,
//                 dropdownDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   //color: Color(0xff2DC52A),
//                 ),
//                 dropdownElevation: 4,
//                 scrollbarRadius: const Radius.circular(40),
//                 scrollbarThickness: 6,
//                 scrollbarAlwaysShow: true,
//                 // offset: const Offset(-20, 0),
//               ),
//             ),
//             const SizedBox(
//               width: 15,
//             ),
//             DropdownButtonHideUnderline(
//               child: DropdownButton2(
//                 isExpanded: true,
//                 // hint: Text(
//                 //   endSelectedMon,
//                 //   style: TextStyle(color: Colors.black),
//                 // ),
//                 items: items
//                     .map((item) => DropdownMenuItem<String>(
//                           value: item,
//                           child: Text(
//                             item,
//                             style: const TextStyle(
//                               fontSize: 15,
//                               fontWeight: FontWeight.bold,
//                               color: Color.fromARGB(255, 6, 6, 6),
//                             ),
//                             overflow: TextOverflow.ellipsis,
//                           ),
//                         ))
//                     .toList(),
//                 value: end3,
//                 onChanged: (value) {
//                   setState(() {
//                     end3 = value as String;
//                   });
//                 },
//                 icon: const Icon(
//                   Icons.arrow_drop_down_outlined,
//                 ),
//                 iconSize: 34,
//                 iconEnabledColor: Color.fromARGB(255, 0, 0, 0),
//                 iconDisabledColor: Color.fromARGB(255, 8, 8, 8),
//                 buttonHeight: 35,
//                 buttonWidth: 120,
//                 buttonPadding: const EdgeInsets.only(left: 14, right: 14),
//                 buttonDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   border: Border.all(
//                     color: Colors.black26,
//                   ),
//                   color: Colors.white,
//                 ),
//                 buttonElevation: 0,
//                 itemHeight: 20,
//                 itemPadding: const EdgeInsets.only(left: 14, right: 14),
//                 dropdownMaxHeight: 100,
//                 dropdownWidth: 200,
//                 dropdownPadding: null,
//                 dropdownDecoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(5),
//                   //color: Color(0xff2DC52A),
//                 ),
//                 dropdownElevation: 4,
//                 scrollbarRadius: const Radius.circular(40),
//                 scrollbarThickness: 6,
//                 scrollbarAlwaysShow: true,
//                 // offset: const Offset(-20, 0),
//               ),
//             ),
//           ],
//         ),
//         IconButton(
//             icon: const Icon(Icons.cancel),
//             onPressed: () {
//               monMap["StartTime"]!.isNotEmpty
//                   ? monMap["StartTime"]?.removeLast()
//                   : null;
//               monMap["EndTime"]!.isNotEmpty
//                   ? monMap["EndTime"]?.removeLast()
//                   : null;
//               removeFun();
//               print(monMap);
//             },
//             color: Colors.red)
//       ],
//     );
//   }
// }
