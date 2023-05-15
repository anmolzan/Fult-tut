import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Theme.dart';

class catalogImage extends StatelessWidget {
  final String image;

  const catalogImage({super.key, required this.image}):super();
  @override
  Widget build(BuildContext context) {
    return   Image.network(image).box.roundedSM.p16.color(MyTheme.creamColors).make().p16().w40(context);
  }
}
