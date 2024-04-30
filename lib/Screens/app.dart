import 'package:flutter/material.dart';
import 'package:myportfolio/Screens/Web/homeScreen.dart';
import 'package:myportfolio/Screens/mobile/MobHomescreen.dart';
import 'package:myportfolio/Screens/reponsive.dart';

class MyApps extends StatelessWidget {
  const MyApps({super.key});

  @override
  Widget build(BuildContext context) {
    return CheckSize().isSmallSceen(MediaQuery.of(context).size.width)
        ? const Scaffold(
            body: HomeScreenMob(),
          )
        : const HomeScreen();
  }
}
