import 'package:flutter/material.dart';
import 'package:meditation/theme/color.dart';
import 'package:meditation/theme/type.dart';
import 'package:velocity_x/velocity_x.dart';

class CurrentMeditation extends StatelessWidget {
  const CurrentMeditation({
    Key? key,
    this.color = lightRed,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(context.percentWidth * 3),
      padding: EdgeInsets.all(context.percentWidth * 3),
      height: context.percentWidth * 25,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: color,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              "Daily Thought".text.textStyle(h2).color(textWhite).make(),
              10.heightBox,
              "Meditation • 3-10 min"
                  .text
                  .textStyle(body1)
                  .color(textWhite)
                  .make(),
            ],
          ),
          VxCircle(
            backgroundColor: buttonBlue,
            radius: 40,
            child: Icon(
              Icons.play_arrow,
              color: textWhite,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}