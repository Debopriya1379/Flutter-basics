import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/Hero%20animation/HeroAnimation2.dart';

class HeroAnimation1 extends StatefulWidget {
  const HeroAnimation1({super.key});

  @override
  State<HeroAnimation1> createState() => _HeroAnimation1State();
}

class _HeroAnimation1State extends State<HeroAnimation1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HeroAnimation2()));
          },
          child: Hero(
            tag: 'hero-animation',
            child: Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
          ),
        ),
      ),
    );
  }
}