import 'dart:async';

import 'package:flutter/material.dart';

class RippleAnimationDemo extends StatefulWidget {
  const RippleAnimationDemo({super.key});

  @override
  State<RippleAnimationDemo> createState() => _RippleAnimationDemoState();
}

class _RippleAnimationDemoState extends State<RippleAnimationDemo> with SingleTickerProviderStateMixin{

  late Animation animation;
  late AnimationController animationController;

  var listRadius = [100.0, 150.0, 200.0, 250.0, 300.0, 350.0];

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(vsync: this, duration: const Duration(seconds: 3));
    // animation = Tween(begin: 0.0, end: 1.0 ).animate(animationController);

    animationController.addListener(() { 
      setState(() {
        
      });
    });

    // animationController.forward();

    forwardAnimation();

  }

  void forwardAnimation() {
    animationController.forward(from: 0);

    Timer(Duration(seconds: 5), forwardAnimation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: listRadius.map(
            (radius) => 
              Container(
                width: radius*animationController.value,
                height: radius*animationController.value,
                decoration: BoxDecoration(
                  color: Colors.blue.withOpacity(1.0 - animationController.value),
                  shape: BoxShape.circle
                ),
              ) 
          ).toList(),
        )
      ),
    );
  }
}