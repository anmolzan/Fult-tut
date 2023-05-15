import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttter_tutorial/models/Cart.dart';
import 'package:fluttter_tutorial/pages/home_detail_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/Catalog.dart';
import '../../pages/home_page.dart';
import '../Theme.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(shrinkWrap: true,itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return InkWell(onTap:() => Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeDetailPage( catalog: catalog),),),

          child: CatalogItem(catalog:catalog,),);
      },
    );
  }
}
class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog}):assert(catalog!=null),super();
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [Hero(tag: Key(catalog.id.toString()),child: catalogImage(image: catalog.image,)),
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.lg.color(MyTheme.darkBlueColor).bold.make(),
              catalog.desc.text.color(Colors.cyanAccent).textStyle(context.captionStyle).make(),10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$${catalog.price}".text.xl.bold.make(),
                  _AddCart(catalog:catalog, key:Colors.green,)

                ],).pOnly(right: 16.0)
            ],
          ))
        ],
      ),
    ).color(context.cardColor).rounded.square(150).make().py16();
  }
}

class _AddCart extends StatefulWidget {
final Item catalog;
const _AddCart({
 required key,required this.catalog
}):super();
  @override
  State<_AddCart> createState() => _AddCartState();
}

class _AddCartState extends State<_AddCart> {
   bool isadded=false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      isadded=isadded.toggle();
      final _catalog=CatalogModel();
    final _cart=CartModel();
    _cart.catalog=_catalog;
    _cart.add(widget.catalog);
    setState(() {});},
      style:ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.tealAccent), shape: MaterialStateProperty.all(StadiumBorder(),)),
      child:isadded?Icon(Icons.done_outline_rounded):"+ Cart".text.xl2.make(),);
  }
}
