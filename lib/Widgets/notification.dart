// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CertNotify extends StatefulWidget {
  @override
  State<CertNotify> createState() => _CertNotifyState();
}

class _CertNotifyState extends State<CertNotify> {
  bool _isDeleted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _isDeleted
            ? Container()
            : Center(
                child: Chip(
                  deleteIconColor: Color(0xffF29843),
                  backgroundColor: Color.fromARGB(255, 248, 232, 217),
                  label: RichText(
                    text: TextSpan(
                        text: "Notice:",
                        style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              color: Color(0xffF29843),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text:
                                '  We recommend you to hide your ID on the certificate before upload ',
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  color: Color(0xffF29843), fontSize: 14),
                            ),
                          )
                        ]),
                  ),
                  onDeleted: () {
                    setState(() {
                      _isDeleted = true;
                    });
                  },
                ),
              ));
  }
}
