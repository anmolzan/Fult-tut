import 'package:flutter/cupertino.dart';
import'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttter_tutorial/models/Catalog.dart';
import 'package:fluttter_tutorial/utils/routes.dart';
import 'package:fluttter_tutorial/widgets/Theme.dart';
import 'dart:convert';
import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widget/catalog_header.dart';
import '../widgets/home_widget/catalog_list.dart';
class Homepage extends StatefulWidget {


  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }
  loadData()async{
    await Future.delayed(Duration(seconds: 2));
   final catalogJson=await rootBundle.loadString("assets/files/catalog.json");
 final decodedData =jsonDecode(catalogJson);
var productsData= decodedData["products"];
CatalogModel.items=List.from(productsData).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
   // final dummylist =List.generate(15, (index) => CatalogModel.items[0]);
    return  Scaffold(
      backgroundColor: context.canvasColor,
      floatingActionButton: FloatingActionButton(onPressed: ()=>Navigator.pushNamed(context, MyRoutes.CartpageRoute),child: Icon(CupertinoIcons.cart,color: Colors.white,),backgroundColor: Colors.tealAccent,),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Catalogheader(),
              if(CatalogModel.items!=null&&CatalogModel.items.isNotEmpty)
                CatalogList().py16().expand()
              else
                CircularProgressIndicator().centered().expand(),
            ],),
        ),
      ),
    );
  }
}





