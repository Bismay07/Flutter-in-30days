import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool isclicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("assets/images/Mobile_login.png"),
          Text(
            "Welcome $name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Color.fromRGBO(109, 98, 255, 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter your username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your Password",
                    labelText: "Password",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  // child: ElevatedButton(
                  //     style: ElevatedButton.styleFrom(
                  //         backgroundColor: Color.fromRGBO(109, 98, 255, 1)),
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Container(
                  //         height: 40,
                  //         width: 150,
                  //         child: Center(
                  //             child: Text(
                  //           "Login",
                  //           style: TextStyle(fontSize: 18),
                  //         )))),
                  child: InkWell(
                    onTap: () async {
                      setState(() {
                        isclicked = true;
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      height: isclicked ? 50 :40,
                      width: isclicked ? 50 : 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(109, 98, 255, 1),
                          borderRadius:  BorderRadius.circular(isclicked ? 50 : 7.7),

                      ),
                      child: isclicked ? Icon(Icons.done, color: Colors.white,) : Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
