import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_gif/flutter_gif.dart';
import 'package:google_fonts/google_fonts.dart';

class SplesScreen extends StatefulWidget {
  const SplesScreen({Key? key}) : super(key: key);

  @override
  State<SplesScreen> createState() => _SplesScreenState();
}

class _SplesScreenState extends State<SplesScreen> {
  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 3),() {
      Navigator.pushReplacementNamed(context, 'home');
    },);

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Text(
            "Nikunj",
            style: GoogleFonts.ballet(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
