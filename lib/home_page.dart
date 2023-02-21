import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  var app_no = 1;
  var developer = "Bismay Bibhu Prakash";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Catalog App")),
      ),
      drawer: Drawer(),
      body: Center(
        child: Container(
          child: Text("My $app_no app created by $developer."),
        ),
      ),
    );
  }
}
