class Item{
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}
final products = [
  Item(id: "2023#1", name: "IPhone14", desc: "Apples new iPhone 14", price: 1,30,000, color: "#33505a", image: "url")
];