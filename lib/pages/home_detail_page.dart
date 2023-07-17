import 'package:flutter/cupertino.dart';
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
              padding: MaterialStatePropertyAll(EdgeInsets.only(
                  left: 20.0, right: 20.0, top: 8.0, bottom: 8.0)),
              backgroundColor:
                  MaterialStatePropertyAll(MyTheme.darkblusihColor),
              shape: const MaterialStatePropertyAll(StadiumBorder()),
            ),
            child: Icon(
              CupertinoIcons.cart_badge_plus,
              size: 40,
            ),
          ),
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
                      "Diam duo accusam elitr sea est ipsum amet consetetur. Sed accusam est ipsum eirmod no justo, tempor kasd et nonumy dolore elitr. Est et ea voluptua lorem voluptua lorem et lorem. Et vero ipsum lorem et et nonumy. Aliquyam magna dolores sed justo, sed clita consetetur et tempor dolor ipsum."
                          .text
                          .textStyle(context.captionStyle)
                          .make()
                          .p16(),
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
