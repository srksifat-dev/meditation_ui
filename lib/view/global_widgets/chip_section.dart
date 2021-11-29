import 'package:flutter/material.dart';
import 'package:meditation/theme/color.dart';
import 'package:velocity_x/velocity_x.dart';

class ChipSection extends StatefulWidget {
  const ChipSection({
    Key? key,
    required this.chips,
  }) : super(key: key);
  final List<String> chips;

  @override
  _ChipSectionState createState() => _ChipSectionState();
}

class _ChipSectionState extends State<ChipSection> {
  var selectedChipIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.percentWidth * 16,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: widget.chips
            .map((chip) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedChipIndex = widget.chips.indexOf(chip);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      left: context.percentWidth * 3,
                      top: context.percentWidth * 3,
                      bottom: context.percentWidth * 3,
                    ),
                    padding: EdgeInsets.symmetric(
                        horizontal: context.percentWidth * 5,
                        vertical: context.percentWidth * 3),
                    decoration: BoxDecoration(
                        color: selectedChipIndex == widget.chips.indexOf(chip)
                            ? buttonBlue
                            : darkerButtonBlue,
                        borderRadius: BorderRadius.circular(10)),
                    child: "$chip".text.color(textWhite).makeCentered(),
                  ),
                ))
            .toList(),
      ),
    );
  }
}