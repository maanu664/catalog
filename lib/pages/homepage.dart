import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "coding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Coding Strom Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("this $day course of $name"),

        ),

      ),

      drawer: Drawer(),

    );
  }
}
