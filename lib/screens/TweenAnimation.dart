import 'package:flutter/material.dart';

class TweenAnimationDemo extends StatefulWidget {
  const TweenAnimationDemo({super.key});

  @override
  State<TweenAnimationDemo> createState() => _TweenAnimationDemoState();
}

class _TweenAnimationDemoState extends State<TweenAnimationDemo> with SingleTickerProviderStateMixin{
  late Animation animation;
  late Animation colorAnimation;
  late AnimationController animationcontroller;

  @override
  void initState() {
    super.initState();
    animationcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    animation = Tween(begin: 200.0 , end: 100.0).animate(animationcontroller);
    colorAnimation = ColorTween(begin: Colors.red, end: Colors.blue).animate(animationcontroller);

    animationcontroller.addListener(() {
      setState(() {
        
      });
    });

    animationcontroller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: animation.value,
          height: animation.value,
          color:colorAnimation.value,
        ),
      ),
    );
  }
}