import 'package:flutter/material.dart';

import '../models/Catalog.dart';
class Itemwidget  extends StatelessWidget {
final Item item;

  const Itemwidget({super. key, required this.item}):assert(item!=null),super();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        shape: StadiumBorder(),
        onTap: (){
          print("${item.name}pressed");
        },
        leading: Image.network(item.image,),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.7,
        style: TextStyle(color: Colors.cyan,fontWeight: FontWeight.bold),),
      ),
    );
  }
}
