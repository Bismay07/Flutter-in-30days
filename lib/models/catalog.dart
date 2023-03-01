import 'package:flutter/material.dart';
class CatalogModel {
  static final items = [
    Item(id: 1,
        name: "IPhone14",
        desc: "Apples new iPhone 14",
        price: 999,
        color: "#33505a",
        image: "https://www.apple.com/v/iphone-14/d/images/overview/selfies/selfie_startframe__ex2suisayck2_large.jpg")
  ];
}


class Item{
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;
  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});

}
