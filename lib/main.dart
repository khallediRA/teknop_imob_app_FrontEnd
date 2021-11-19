import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_web_app/screens/home_screen.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          subtitle1: GoogleFonts.roboto(
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          headline1: GoogleFonts.parisienne(
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          bodyText1: GoogleFonts.roboto(
            textStyle: const TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w400),
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}
