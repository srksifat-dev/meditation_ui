import 'package:flutter/material.dart';
import 'package:meditation/model/feature.dart';
import 'package:meditation/theme/color.dart';
import 'package:velocity_x/velocity_x.dart';

class FeatureItem extends StatelessWidget {
  const FeatureItem({Key? key, required this.feature}) : super(key: key);

  final Feature feature;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(context.percentWidth * 3),
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
          color: feature.color, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          "${feature.title}".text.xl3.color(textWhite).bold.make(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                feature.icon,
                color: textWhite,
                size: 35,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: buttonBlue,
                ),
                child: "Start".text.color(textWhite).makeCentered(),
              )
            ],
          )
        ],
      ),
    );
  }
}