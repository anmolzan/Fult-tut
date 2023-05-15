import 'package:flutter/material.dart';
import 'package:fluttter_tutorial/models/Cart.dart';
import 'package:fluttter_tutorial/widgets/Theme.dart';
import 'package:velocity_x/velocity_x.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart" .text.cyan600.bold.make(),
      ),
      body: Column(
        children: [
          _Cartlist().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}
class _CartTotal extends StatelessWidget {
  final _cart =CartModel();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: ["\$${_cart.totalPrice}".text.xl3.color(Vx.pink700).make(),
100.widthBox,        ElevatedButton(onPressed: (){ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: "Buying not supported yet".text.make()));},
              style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.cyanAccent)), child: "Buy".text.bold.make()).w20(context)
        ],
      ),
    ) ;
  }
}
class _Cartlist extends StatefulWidget {
  @override
  State<_Cartlist> createState() => _CartlistState();
}

class _CartlistState extends State<_Cartlist> {
  final _cart=CartModel();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _cart.items?.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {},
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );/*ListView.builder(itemCount: _cart.items?.length,itemBuilder: (context, index) => ListTile(leading: Icon(Icons.done),
      trailing: IconButton( icon: Icon(Icons.remove_circle_outline),onPressed: (){},),title: _cart.items[index].name.text.make(),),);*/
  }
}


