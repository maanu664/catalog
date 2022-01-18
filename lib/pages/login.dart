import 'dart:async';

import 'package:catalog/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LogIn extends StatefulWidget {
  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String name = "";
  bool change = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
          Image.asset(
          "images/login1 1.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "welcome $name",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
          child: Column(
            children: [
          TextFormField(
          decoration: InputDecoration(
          hintText: "Enter Your Name",
            labelText: "User Name",
          ),
          onChanged: (Value) {
            name = Value;
            setState(() {});
          },
        ),
        TextFormField(
          obscureText: true,
          decoration: InputDecoration(
            hintText: "Enter Your Password",
            labelText: "Password",
          ),
        ),
        SizedBox(
          height: 30,
        ),
        Material(
          color: Colors.deepPurpleAccent,
          borderRadius: BorderRadius.circular(change ? 50 : 16),
            child: InkWell(
            onTap: () async {
      setState(() {
      change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoutes);
      },
        child: AnimatedContainer(
          duration: Duration(seconds: 1),
          height: 40,
          width: change ? 50 : 90,
          alignment: Alignment.center,
          child: change
              ? Icon(
            Icons.done,
            color: Colors.white,
          )
              : Text(
            "login",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

        ),
      ),
    ),
    // ElevatedButton(
    //   child: Text("Log In"),
    //   style: TextButton.styleFrom(
    //     backgroundColor: Colors.red,
    //     shadowColor: Colors.yellowAccent,
    //     minimumSize: Size(120,50),
    //   ),
    //   onPressed: () {
    //     Navigator.pushNamed(context, MyRoutes.homeRoutes);
    //   },
    // ),
    ],
    ),
    )
    ],
    ),
    ),
    );
  }
}
