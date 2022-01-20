import 'package:catalog/utils/item_widgett.dart';
import 'package:catalog/utils/models/catalog.dart';
import 'package:flutter/material.dart';

import '../drawer.dart';

class HomePage extends StatelessWidget {
  final int day = 30;
  final String name = "coding";

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(10, (index) => catalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog"),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(Items: dummyList[index]);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
