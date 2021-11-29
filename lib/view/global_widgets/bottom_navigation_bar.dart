import 'package:flutter/material.dart';
import 'package:meditation/model/bottomNavigationContent.dart';
import 'package:meditation/theme/color.dart';
import 'package:velocity_x/velocity_x.dart';

class Navigation extends StatefulWidget {
  const Navigation({
    Key? key,
    required this.content,
    this.activeHightLightColor = buttonBlue,
    this.activeTextColor = textWhite,
    this.inactiveTextColor = aquaBlue,
  }) : super(key: key);

  final List<BottomNavigationContent> content;
  final Color activeHightLightColor;
  final Color activeTextColor;
  final Color inactiveTextColor;

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(top: context.percentWidth * 2),
        height: context.percentWidth * 18,
        width: double.infinity,
        color: deepBlue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: widget.content
              .map((item) => GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedItemIndex = widget.content.indexOf(item);
                    });
                  },
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:
                              selectedItemIndex == widget.content.indexOf(item)
                                  ? widget.activeHightLightColor
                                  : Colors.transparent,
                        ),
                        child: Icon(
                          item.icon,
                          color:
                              selectedItemIndex == widget.content.indexOf(item)
                                  ? widget.activeTextColor
                                  : widget.inactiveTextColor,
                        ),
                      ),
                      "${item.title}"
                          .text
                          .color(
                              selectedItemIndex == widget.content.indexOf(item)
                                  ? widget.activeTextColor
                                  : widget.inactiveTextColor)
                          .make()
                    ],
                  )))
              .toList(),
        ),
      ),
    );
  }
}