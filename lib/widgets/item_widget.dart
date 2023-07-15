import 'package:flutter/material.dart';
import 'package:flutter_catalogapp/model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
