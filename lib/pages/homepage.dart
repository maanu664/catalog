import 'package:catalog/utils/item_widgett.dart';
import 'package:catalog/utils/models/catalog.dart';
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
      body: ListView.builder(
        itemCount: catalogModel.items.length,
        itemBuilder: (context, index) {
          return ItemWidget(Items: catalogModel.items[index],);
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
