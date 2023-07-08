import 'package:flutter/material.dart';
import 'package:flutter_catalogapp/model/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      child: ListTile(
        onTap: () {
          print("${item.name} pressed");
        },
        leading: Image.asset("assets/images/hey.png"),
        title: Text(item.name),
        trailing: Text(
          "\$${item.price}",
          textScaleFactor: 1.5,
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
