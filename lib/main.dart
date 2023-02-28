import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/screens/home_page.dart';
import 'package:test_1/screens/login.dart';
import 'package:test_1/utils/routes.dart';
import 'package:test_1/widgets/themes.dart';

void main(){
  runApp(MyApp());
}
// today in day 11 we just learned about the "Context" and "Constraints".
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode:ThemeMode.light,
      theme: MyTheme.LightTheme(context),
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
