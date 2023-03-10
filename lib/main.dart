import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/screens/home_page.dart';
import 'package:test_1/screens/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.light,
      theme: ThemeData(
        // canvasColor: Colors.greenAccent,
        // primarySwatch: Colors.green,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      routes: {
        "/": (context) => LoginPage(),
        // "/home": (context) => LoginPage(),
      },
    );
  }
}
