import 'package:flutter/material.dart';
import 'package:flutter_catalogapp/model/catalog.dart';
import 'package:flutter_catalogapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.creamColor,
      ),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.xl4.red800.bold.make(),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(MyTheme.darkblusihColor),
                shape: const MaterialStatePropertyAll(StadiumBorder())),
            child: "Buy".text.xl2.bold.makeCentered().wh(80, 50),
          )
        ],
      ).p32(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: catalog.id.toString(),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.top,
                arcType: VxArcType.convey,
                child: Container(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      catalog.name.text.bold
                          .color(MyTheme.darkblusihColor)
                          .xl4
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                    ],
                  ).wFull(context).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
