import 'package:flutter/material.dart';
import 'package:meditation/main.dart';
import 'package:meditation/model/feature.dart';
import 'package:meditation/theme/color.dart';
import 'package:velocity_x/velocity_x.dart';

import 'feature_item.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({Key? key, required this.features}) : super(key: key);
  final List<Feature> features;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        20.heightBox,
        Padding(
          padding: EdgeInsets.only(left: context.percentWidth * 3),
          child: "Featured".text.xl4.color(textWhite).bold.make(),
        ),
        20.heightBox,
        Container(
          margin: EdgeInsets.symmetric(horizontal: context.percentWidth * 3),
          height: context.percentWidth * 109,
          width: double.infinity,
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
              crossAxisSpacing: context.percentWidth * 3,
              mainAxisSpacing: context.percentWidth * 3,
            ),
            children:
                features.map((item) => FeatureItem(feature: item)).toList(),
          ),
        ),
      ],
    );
  }
}