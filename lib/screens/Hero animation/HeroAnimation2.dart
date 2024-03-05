import 'package:flutter/material.dart';

class HeroAnimation2 extends StatefulWidget {
  const HeroAnimation2({super.key});

  @override
  State<HeroAnimation2> createState() => _HeroAnimation2State();
}

class _HeroAnimation2State extends State<HeroAnimation2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Hero(
          tag: 'hero-animation',
          child: Container(
            width: double.infinity,
            height: 100,
            color: Colors.red,
          ),
        ),
      ),
    );
  }
}