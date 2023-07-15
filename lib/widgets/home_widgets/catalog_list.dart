import 'package:flutter/material.dart';
import 'package:flutter_catalogapp/model/catalog.dart';
import 'package:flutter_catalogapp/pages/home_detail_page.dart';
import 'package:flutter_catalogapp/widgets/home_widgets/catalog_Item.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: StretchingOverscrollIndicator(
        axisDirection: AxisDirection.down,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: CatalogModel.items.length,
          itemBuilder: ((context, index) {
            final catalog = CatalogModel.items[index];
            return InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeDetailPage(catalog: catalog),
                    )),
                child: CatalogItem(catalog: catalog));
          }),
        ),
      ),
    );
  }
}
