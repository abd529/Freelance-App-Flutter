// ignore_for_file: prefer_const_constructors, library_private_types_in_public_api
// import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'dart:math';

// HomePage
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

// Randomly colored Container
Container createNewContainer() {
  return Container(
    height: 100,
    width: 100,
    color: Color.fromARGB(
      255,
      Random().nextInt(256),
      Random().nextInt(256),
      Random().nextInt(256),
    ),
  );
}

// _HomePageState
class _HomePageState extends State<HomePage> {
  // Init
  List<Container> containerList = [
    createNewContainer(),
    createNewContainer(),
  ];

  // Add
  void addContainer() {
    containerList.add(createNewContainer());
  }

  // Pop
  void popContainer() {
    containerList.removeLast();
  }

  // _childrenList
  List<Widget> _childrenList() {
    return containerList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _childrenList(),
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.black,
              onPressed: () {
                setState(() {
                  addContainer();
                });
              },
              child: Icon(Icons.add),
            ),
            SizedBox(
              height: 10,
            ),
            FloatingActionButton(
              backgroundColor: Colors.grey,
              onPressed: () {
                setState(() {
                  popContainer();
                });
              },
              child: Icon(Icons.remove),
            )
          ],
        ));
  }
}
// class TestingTime extends StatefulWidget {
//   const TestingTime({super.key});

//   @override
//   State<TestingTime> createState() => _TestingTimeState();
// }

// class _TestingTimeState extends State<TestingTime> {
//   final monTimeRows = [];
//   final List<String> items = List.generate(25, (index) => "$index:00");
//   void _removeMonTimeRow() {
//     setState(() {
//       if (monTimeRows.isNotEmpty) {
//         monTimeRows.removeLast();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final List<Map> monVarLists = [];
//     void _addMonTimeRow(int num) {
//       setState(() {
//         monTimeRows.add(timeSlot(_removeMonTimeRow, monVarLists[num]["start"],
//             monVarLists[num]["end"]));
//       });
//     }

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: AppColors.gradientGreen,
//         elevation: 0,
//       ),
//       body: Column(children: [
//         Expanded(
//           child: ListView.builder(
//             itemCount: monTimeRows.length,
//             itemBuilder: (BuildContext context, int index) {
//               return timeSlot(_removeMonTimeRow, monVarLists[index]["start"],
//                   monVarLists[index]["end"]);
//             },
//           ),
//         ),
//       ]),
//     );
//   }

//   Row timeSlot(Function() removeFun, String startB, String endB) {
//     return Row(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             DropdownButtonHideUnderline(
//               child: DropdownButton2(
//                 isExpanded: true,
//                 hint: Text(
//                   "0:00",
//                   style: TextStyle(color: Colors.black),
//                 ),
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
//                 value: startB,
//                 onChanged: (value) {
//                   setState(() {
//                     startB = value as String;
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
//                 hint: Text(
//                   "0:00",
//                   style: TextStyle(color: Colors.black),
//                 ),
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
//                 value: endB,
//                 onChanged: (value) {
//                   setState(() {
//                     endB = value as String;
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
//               removeFun();
//             },
//             color: Colors.red)
//       ],
//     );
//   }
// }

// // import 'dart:typed_data';

// // import 'package:flutter/material.dart';
// // import 'package:google_place/google_place.dart';

// // class HomePage extends StatefulWidget {
// //   @override
// //   _HomePageState createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   late GooglePlace googlePlace;
// //   List<AutocompletePrediction> predictions = [];

// //   @override
// //   void initState() {
// //     googlePlace = GooglePlace("AIzaSyD8JaujXeUY5F8IEqnS5z0DK_XjYV7bIFI");
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: SafeArea(
// //         child: Container(
// //           margin: EdgeInsets.only(right: 20, left: 20, top: 20),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: <Widget>[
// //               TextField(
// //                 decoration: InputDecoration(
// //                   labelText: "Search",
// //                   focusedBorder: OutlineInputBorder(
// //                     borderSide: BorderSide(
// //                       color: Colors.blue,
// //                       width: 2.0,
// //                     ),
// //                   ),
// //                   enabledBorder: OutlineInputBorder(
// //                     borderSide: BorderSide(
// //                       color: Colors.black54,
// //                       width: 2.0,
// //                     ),
// //                   ),
// //                 ),
// //                 onChanged: (value) {
// //                   if (value.isNotEmpty) {
// //                     autoCompleteSearch(value);
// //                   } else {
// //                     if (predictions.isNotEmpty && mounted) {
// //                       setState(() {
// //                         predictions = [];
// //                       });
// //                     }
// //                   }
// //                 },
// //               ),
// //               SizedBox(
// //                 height: 10,
// //               ),
// //               Expanded(
// //                 child: ListView.builder(
// //                   itemCount: predictions.length,
// //                   itemBuilder: (context, index) {
// //                     return ListTile(
// //                       leading: CircleAvatar(
// //                         child: Icon(
// //                           Icons.pin_drop,
// //                           color: Colors.white,
// //                         ),
// //                       ),
// //                       title: Text(predictions[index].description as String),
// //                       onTap: () {
// //                         print(predictions[index].placeId);
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (context) => DetailsPage(
// //                               placeId: predictions[index].placeId as String,
// //                               googlePlace: googlePlace,
// //                             ),
// //                           ),
// //                         );
// //                       },
// //                     );
// //                   },
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   void autoCompleteSearch(String value) async {
// //     var result = await googlePlace.autocomplete.get(value);
// //     if (result != null && result.predictions != null && mounted) {
// //       setState(() {
// //         predictions = result.predictions as List<AutocompletePrediction>;
// //       });
// //     }
// //   }
// // }

// // class DetailsPage extends StatefulWidget {
// //   final String placeId;
// //   final GooglePlace googlePlace;

// //   const DetailsPage({required this.placeId, required this.googlePlace});

// //   @override
// //   _DetailsPageState createState() =>
// //       _DetailsPageState(this.placeId, this.googlePlace);
// // }

// // class _DetailsPageState extends State<DetailsPage> {
// //   late final String placeId;
// //   late final GooglePlace googlePlace;

// //   //_DetailsPageState(this.placeId, this.googlePlace);

// //   late DetailsResult detailsResult;
// //   List<Uint8List> images = [];

// //   _DetailsPageState(String placeId, GooglePlace googlePlace);

// //   @override
// //   void initState() {
// //     getDetails(this.placeId);
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("Details"),
// //         backgroundColor: Colors.blueAccent,
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         backgroundColor: Colors.blueAccent,
// //         onPressed: () {
// //           getDetils(this.placeId);
// //         },
// //         child: Icon(Icons.refresh),
// //       ),
// //       body: SafeArea(
// //         child: Container(
// //           margin: EdgeInsets.only(right: 20, left: 20, top: 20),
// //           child: Column(
// //             mainAxisSize: MainAxisSize.min,
// //             children: <Widget>[
// //               Container(
// //                 height: 200,
// //                 child: ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   itemCount: images.length,
// //                   itemBuilder: (context, index) {
// //                     return Container(
// //                       width: 250,
// //                       child: Card(
// //                         elevation: 4,
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                         ),
// //                         child: ClipRRect(
// //                           borderRadius: BorderRadius.circular(10.0),
// //                           child: Image.memory(
// //                             images[index],
// //                             fit: BoxFit.fill,
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //               SizedBox(
// //                 height: 10,
// //               ),
// //               Expanded(
// //                 child: Card(
// //                   elevation: 4,
// //                   shape: RoundedRectangleBorder(
// //                     borderRadius: BorderRadius.circular(10.0),
// //                   ),
// //                   child: ListView(
// //                     children: <Widget>[
// //                       Container(
// //                         margin: EdgeInsets.only(left: 15, top: 10),
// //                         child: Text(
// //                           "Details",
// //                           style: TextStyle(
// //                             fontSize: 20,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                       ),
// //                       detailsResult != null && detailsResult.types != null
// //                           ? Container(
// //                               margin: EdgeInsets.only(left: 15, top: 10),
// //                               height: 50,
// //                               child: ListView.builder(
// //                                 scrollDirection: Axis.horizontal,
// //                                 itemCount: detailsResult.types?.length,
// //                                 itemBuilder: (context, index) {
// //                                   return Container(
// //                                     margin: EdgeInsets.only(right: 10),
// //                                     child: Chip(
// //                                       label: Text(
// //                                         detailsResult.types![index],
// //                                         style: TextStyle(
// //                                           color: Colors.white,
// //                                         ),
// //                                       ),
// //                                       backgroundColor: Colors.blueAccent,
// //                                     ),
// //                                   );
// //                                 },
// //                               ),
// //                             )
// //                           : Container(),
// //                       Container(
// //                         margin: EdgeInsets.only(left: 15, top: 10),
// //                         child: ListTile(
// //                           leading: CircleAvatar(
// //                             child: Icon(Icons.location_on),
// //                           ),
// //                           title: Text(
// //                             detailsResult != null &&
// //                                     detailsResult.formattedAddress != null
// //                                 ? 'Address: ${detailsResult.formattedAddress}'
// //                                 : "Address: null",
// //                           ),
// //                         ),
// //                       ),
// //                       Container(
// //                         margin: EdgeInsets.only(left: 15, top: 10),
// //                         child: ListTile(
// //                           leading: CircleAvatar(
// //                             child: Icon(Icons.location_searching),
// //                           ),
// //                           title: Text(
// //                             detailsResult != null &&
// //                                     detailsResult.geometry != null &&
// //                                     detailsResult.geometry?.location != null
// //                                 ? 'Geometry: ${detailsResult.geometry?.location!.lat.toString()},${detailsResult.geometry!.location?.lng.toString()}'
// //                                 : "Geometry: null",
// //                           ),
// //                         ),
// //                       ),
// //                       Container(
// //                         margin: EdgeInsets.only(left: 15, top: 10),
// //                         child: ListTile(
// //                           leading: CircleAvatar(
// //                             child: Icon(Icons.timelapse),
// //                           ),
// //                           title: Text(
// //                             detailsResult != null &&
// //                                     detailsResult.utcOffset != null
// //                                 ? 'UTC offset: ${detailsResult.utcOffset.toString()} min'
// //                                 : "UTC offset: null",
// //                           ),
// //                         ),
// //                       ),
// //                       Container(
// //                         margin: EdgeInsets.only(left: 15, top: 10),
// //                         child: ListTile(
// //                           leading: CircleAvatar(
// //                             child: Icon(Icons.rate_review),
// //                           ),
// //                           title: Text(
// //                             detailsResult != null &&
// //                                     detailsResult.rating != null
// //                                 ? 'Rating: ${detailsResult.rating.toString()}'
// //                                 : "Rating: null",
// //                           ),
// //                         ),
// //                       ),
// //                       Container(
// //                         margin: EdgeInsets.only(left: 15, top: 10),
// //                         child: ListTile(
// //                           leading: CircleAvatar(
// //                             child: Icon(Icons.attach_money),
// //                           ),
// //                           title: Text(
// //                             detailsResult != null &&
// //                                     detailsResult.priceLevel != null
// //                                 ? 'Price level: ${detailsResult.priceLevel.toString()}'
// //                                 : "Price level: null",
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                 ),
// //               ),
// //               Container(
// //                 margin: EdgeInsets.only(top: 20, bottom: 10),
// //                 child: Image.asset("assets/powered_by_google.png"),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   void getDetils(String placeId) async {
// //     var result = await this.googlePlace.details.get(placeId);
// //     if (result != null && result.result != null && mounted) {
// //       setState(() {
// //         detailsResult = result.result!;
// //         images = [];
// //       });

// //       if (result.result?.photos != null) {
// //         for (var photo in result.result!.photos!) {
// //           getPhoto(photo.photoReference as String);
// //         }
// //       }
// //     }
// //   }

// //   void getPhoto(String photoReference) async {
// //     var result = await googlePlace.photos.get(photoReference, null as int, 400);
// //     if (result != null && mounted) {
// //       setState(() {
// //         images.add(result);
// //       });
// //     }
// //   }
// // }
