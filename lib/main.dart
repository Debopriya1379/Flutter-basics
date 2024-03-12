import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/AnimatedContainerDemo.dart';
import 'package:flutter_demo_1/screens/AnimatedOpacityDemo.dart';
import 'package:flutter_demo_1/screens/BmiCalculator.dart';
import 'package:flutter_demo_1/screens/CrossfadeAnimation.dart';
import 'package:flutter_demo_1/screens/Hero%20animation/HeroAnimation1.dart';
import 'package:flutter_demo_1/screens/MyListWheelScrollView.dart';
import 'package:flutter_demo_1/screens/MyRangeSlider.dart';
import 'package:flutter_demo_1/screens/RippleAnimationDemo.dart';
import 'package:flutter_demo_1/screens/SharedPreference/SpFlash.dart';
import 'package:flutter_demo_1/screens/TweenAnimation.dart';
import 'package:flutter_demo_1/screens/home.dart';
import 'package:flutter_demo_1/uihelper/util.dart';

void main() {
 runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "My flutter app",
        debugShowCheckedModeBanner: false,
        // home: HomeScreen(),
        // home: MyRangeSlider(),
        // home: BmiCalculator(),
        // home: AnimatedContainerDemo(),
        // home: AnimatedOpacityDemo(),
        // home: CrossfadeAnimation(),
        // home: HeroAnimation1(),
        // home: MyListWheelScrollView(),
        // home: TweenAnimationDemo(),
        home: SPFlash(),
    );
  }
}
