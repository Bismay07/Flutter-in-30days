import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/screens/home_page.dart';
import 'package:test_1/screens/login.dart';
import 'package:test_1/utils/routes.dart';

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
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        MyRoutes.loginRoute : (context) => LoginPage(),
        MyRoutes.homeRoute : (context) => HomePage(),
      },
    );
  }
}
