import 'package:catalog/utils/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final item Items;

  const ItemWidget({Key? key, required this.Items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(Items.image),
      title: Text(
        Items.name,
        style: TextStyle(
          color: Colors.blueGrey,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        Items.decs,
        style: TextStyle(
          color: Colors.blue,
          fontWeight: FontWeight.normal,
        ),
      ),
      trailing: Text(
        "\$${Items.price}",
        textScaleFactor: 1.2,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
