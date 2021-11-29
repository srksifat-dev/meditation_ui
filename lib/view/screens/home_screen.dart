import 'package:flutter/material.dart';
import 'package:meditation/model/bottomNavigationContent.dart';
import 'package:meditation/model/feature.dart';
import 'package:meditation/theme/color.dart';
import 'package:meditation/view/global_widgets/bottom_navigation_bar.dart';
import 'package:meditation/view/global_widgets/chip_section.dart';
import 'package:meditation/view/global_widgets/current_meditation.dart';
import 'package:meditation/view/global_widgets/featured_section.dart';
import 'package:meditation/view/global_widgets/greeting_section.dart';

class MyHomePage extends StatelessWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: deepBlue,
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                GreetingSection(),
                ChipSection(chips: ["Sweet sleep", "Insomnia", "Depression"]),
                CurrentMeditation(),
                FeaturedSection(features: [
                  Feature(
                      title: "Sleep meditation",
                      icon: Icons.headphones,
                      color: blueViolet2),
                  Feature(
                      title: "Tip for sleeping",
                      icon: Icons.video_camera_front,
                      color: lightGreen2),
                  Feature(
                      title: "Night island",
                      icon: Icons.headphones,
                      color: orangeYellow2),
                  Feature(
                      title: "Calming sound",
                      icon: Icons.headphones,
                      color: beige2),
                  Feature(
                      title: "Night island",
                      icon: Icons.headphones,
                      color: orangeYellow2),
                  Feature(
                      title: "Calming sound",
                      icon: Icons.headphones,
                      color: beige2),
                ]),
              ],
            ),
            Navigation(content: <BottomNavigationContent> [
              BottomNavigationContent(title: "Home", icon: Icons.home),
              BottomNavigationContent(
                  title: "Meditate", icon: Icons.notifications_paused),
              BottomNavigationContent(title: "Sleep", icon: Icons.nightlight),
              BottomNavigationContent(title: "Music", icon: Icons.music_note),
              BottomNavigationContent(title: "Profile", icon: Icons.person),
            ])
          ],
        ),
      ),
    );
  }
}