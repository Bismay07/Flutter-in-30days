import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {

  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item!= null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
        child: ListTile(
          leading: Image.network("https://www.apple.com/v/iphone-14/d/images/overview/selfies/selfie_startframe__ex2suisayck2_large.jpg"),
          title: Text("IPhone14"),
          subtitle: Text("Apple's new iPhone 14"),
        trailing: Text("\$${item.price}"),

        ),
      );
  }
}
