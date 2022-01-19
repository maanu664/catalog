class catalogModel {
  static final items = [
    item(
      id: 1,
      name: "Iphone 13 pro max",
      decs:
          "Apple iPhone 13 · Released 2021, September 24 · 174g, 7.7mm thickness ",
      price: 999,
      color: "#33055a",
      image: "https://www.notebookcheck.net/typo3temp/_processed_/6/b/csm_4_to_3_Teaser_Apple_iPhone_13_Pro_bde30ec4f8.jpg",
    ),
  ];
}

class item {
  final int id;
  final String name;
  final String decs;
  final num price;
  final String color;
  final String image;

  item(
      {required this.id,
      required this.name,
      required this.decs,
      required this.price,
      required this.color,
      required this.image});
}
