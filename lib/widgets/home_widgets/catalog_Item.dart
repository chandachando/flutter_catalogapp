import 'package:flutter/material.dart';
import 'package:flutter_catalogapp/model/catalog.dart';
import 'package:flutter_catalogapp/widgets/home_widgets/catalog_image.dart';
import 'package:flutter_catalogapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({
    super.key,
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: catalog.id.toString(),
            child: CatalogImage(image: catalog.image)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.bold.color(MyTheme.darkblusihColor).lg.make(),
            catalog.desc.text
                .textStyle(context.captionStyle)
                .make()
                .pOnly(right: 8.0),
            10.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                "\$${catalog.price}"
                    .text
                    .lg
                    .color(MyTheme.darkblusihColor)
                    .bold
                    .make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(MyTheme.darkblusihColor),
                      shape: const MaterialStatePropertyAll(StadiumBorder())),
                  child: "Buy".text.make(),
                )
              ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).rounded.white.square(150).make().py16();
  }
}
