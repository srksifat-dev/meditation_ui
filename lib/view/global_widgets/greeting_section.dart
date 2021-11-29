import 'package:flutter/material.dart';
import 'package:meditation/theme/color.dart';
import 'package:meditation/theme/type.dart';
import 'package:velocity_x/velocity_x.dart';

class GreetingSection extends StatelessWidget {
  const GreetingSection({
    Key? key,
    this.name = "Sifat",
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(context.percentWidth * 3),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              "Good Morning, $name".text.textStyle(h2).make(),
              10.heightBox,
              "We wish you have a good day!".text.textStyle(body1).make(),
            ],
          ),
          Icon(
            Icons.search,
            color: textWhite,
            size: 30,
          )
        ],
      ),
    );
  }
}