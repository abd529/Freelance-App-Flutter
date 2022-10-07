// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_local_variable, prefer_const_declarations, unused_element
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class UserCardWidget extends StatelessWidget {
  final String imgUrl;
  final String name;
  final String profession;
  final String location;
  final int rating;
  final int reviews;
  final int money;

  UserCardWidget(
    this.imgUrl,
    this.name,
    this.profession,
    this.location,
    this.rating,
    this.reviews,
    this.money,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.white,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      size: 20,
                      color: Theme.of(context).primaryColor,
                    ))
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                      maxRadius: 45,
                    ),
                    Container(
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child:
                              Icon(Icons.circle, color: Colors.white, size: 15),
                        ))
                  ]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name,
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.left),
                    Text(profession,
                        softWrap: true,
                        textAlign: TextAlign.start,
                        style: TextStyle(color: Colors.grey)),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Icon(
                            Icons.pin_drop_outlined,
                            color: Colors.grey,
                          ),
                        ),
                        Text(location,
                            softWrap: true,
                            style: TextStyle(color: Colors.grey))
                      ],
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RatingBar.builder(
                        initialRating: rating.toDouble(),
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        itemPadding: const EdgeInsets.symmetric(vertical: 12.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Color.fromARGB(255, 215, 194, 0),
                          size: 10,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                    Text("($reviews)", style: TextStyle(fontSize: 15)),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Icon(
                      Icons.attach_money_rounded,
                      color: Theme.of(context).primaryColor,
                    ),
                    Text("Starting from ",
                        style: TextStyle(fontSize: 13, color: Colors.grey)),
                    Text(
                      money.toString(),
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    )
                  ]),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 22, vertical: 8),
                      child: Text("See Profile",
                          style:
                              TextStyle(color: Theme.of(context).primaryColor)),
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 22, vertical: 8),
                        child: Text(
                          "Contact Now",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      )),
                ],
              ),
            )
          ]),
        ));
  }
}
