import 'package:flutter/material.dart';
import 'package:flutter_catalogapp/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkblusihColor).make(),
        "Trending Products".text.xl2.make(),
      ],
    );
  }
}
