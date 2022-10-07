// ignore_for_file: prefer_const_constructors, avoid_print

import 'dart:async';

import 'package:be_pass/Widgets/custom_button_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';

import '../app_Colors.dart';

class WorkingAreas extends StatefulWidget {
  static const routeName = "working-areas";
  const WorkingAreas({Key? key}) : super(key: key);

  @override
  State<WorkingAreas> createState() => _WorkingAreasState();
}

class _WorkingAreasState extends State<WorkingAreas> {
  final TextEditingController _areaText = TextEditingController();
  final TextEditingController _textArea = TextEditingController();
  List<String> _values = [];
  List<bool> _selected = [];
  late GooglePlace googlePlace;
  List<AutocompletePrediction> predictions = [];
  Timer? debounce;
  DetailsResult? position;
  late FocusNode areaFocusNode;

  @override
  void initState() {
    super.initState();
    String apikey = "AIzaSyCkmpaMPmzhJgTLPh2r_14RB4Je-tX76lw";
    googlePlace = GooglePlace(apikey);
    areaFocusNode = FocusNode();
  }

  void autoCompleteSearch(String value) async {
    var result = await googlePlace.autocomplete.get(value);
    if (result != null && result.predictions != null && mounted) {
      print(result.predictions!.first.description);
      setState(() {
        predictions = result.predictions!;
      });
    }
  }

  @override
  void dispose() {
    _areaText.dispose();
    super.dispose();
  }

  Widget buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _values.length; i++) {
      InputChip actionChip = InputChip(
        selected: _selected[i],
        label: Text(
          _values[i],
          style: TextStyle(
              color: AppColors.gradientGreen,
              fontWeight: FontWeight.w600,
              fontSize: 12),
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

    return GridView(
      // This next line does the trick.
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 120,
          childAspectRatio: 3,
          crossAxisSpacing: 5,
          mainAxisExtent: 50),
      //scrollDirection: Axis.horizontal,
      children: chips,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      Row(
                        children: [
                          IconButton(
                              icon: Icon(Icons.arrow_back_ios),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          Text("Add Working Areas",
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
                Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("I work in city"),
                          TextFormField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              suffixIcon: _areaText.text.isNotEmpty
                                  ? IconButton(
                                      icon: Icon(Icons.clear_outlined),
                                      onPressed: () {
                                        predictions = [];
                                        _areaText.clear();
                                      },
                                    )
                                  : null,
                              label: Text("Working Areas"),
                              hintText: "New York, Seattle ",
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
                            onChanged: (value) {
                              if (debounce?.isActive ?? false) {
                                debounce!.cancel();
                              }
                              debounce = Timer(Duration(milliseconds: 100), () {
                                if (value.isNotEmpty) {
                                  //call place api
                                  autoCompleteSearch(value);
                                } else {
                                  //shutup
                                  setState(() {
                                    predictions = [];
                                    position = null;
                                  });
                                }
                              });
                            },
                            focusNode: areaFocusNode,
                            controller: _areaText,
                            onEditingComplete: () {
                              _values.add(_areaText.text);
                              _selected.add(true);
                              _areaText.clear();

                              setState(() {
                                _values = _values;
                                _selected = _selected;
                              });
                            },
                          ),
                          ListView.builder(
                              shrinkWrap: true,
                              itemCount: predictions.length,
                              itemBuilder: (context, index) {
                                return ListTile(
                                    onTap: () async {
                                      final placeId = predictions[index]
                                          .placeId!
                                          .toString();
                                      final details = await googlePlace.details
                                          .get(placeId);
                                      if (details != null &&
                                          details.result != null &&
                                          mounted) {
                                        if (areaFocusNode.hasFocus) {
                                          setState(() {
                                            position = details.result;
                                            _areaText.text =
                                                details.result!.name.toString();
                                            predictions = [];
                                          });
                                        }
                                      }
                                    },
                                    leading: CircleAvatar(
                                        backgroundColor:
                                            AppColors.gradientGreen,
                                        child: Icon(Icons.pin_drop,
                                            color: Colors.white)),
                                    title: Text(predictions[index]
                                        .description
                                        .toString()));
                              }),
                          SizedBox(
                            height: 0,
                          ),
                          SizedBox(
                            height: _values.isEmpty ? 5 : 100,
                            child: buildChips(),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 50,
                ),
                Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Work in Areas"),
                          TextFormField(
                            minLines: 2,
                            maxLines: 5,
                            controller: _textArea,
                            textInputAction: TextInputAction.send,
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              label: Text("Introduce Yourself"),
                              hintText:
                                  'Experienced web developer with a strong background in developing award-winning applications for a diverse clientele. 5+ years of industry',
                              hintStyle: TextStyle(color: Colors.grey),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                  onTap: () {},
                  buttonText: "Save Changes",
                  borderRadius: 25,
                  borderColor: Color.fromARGB(255, 232, 232, 232),
                  textColor: Colors.white,
                )
              ],
            )),
      ),
    );
  }
}
