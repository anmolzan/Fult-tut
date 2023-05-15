import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../Theme.dart';

class Catalogheader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(Colors.greenAccent).make(),
        "Trending Product".text.xl2.make(),
      ],);
  }
}