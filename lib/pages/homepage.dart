import 'package:flutter/material.dart';

import '../drawer.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "coding";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: Center(
        child: Container(
          child: Text("this $day course of $name"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
