class CatalogModel {
  static final items = [
    Item(
      id: "moon001",
      name: "IPHONE 11 Pro MAX",
      desc: "Apple IPHONE 11th Generation",
      price: 999,
      color: "#33505a",
      image: "",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
