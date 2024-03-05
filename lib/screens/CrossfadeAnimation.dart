import 'dart:async';

import 'package:flutter/material.dart';

class CrossfadeAnimation extends StatefulWidget {
  const CrossfadeAnimation({super.key});

  @override
  State<CrossfadeAnimation> createState() => _CrossfadeAnimationState();
}

class _CrossfadeAnimationState extends State<CrossfadeAnimation> {

  bool _enabled = false;

  @override
  void initState() {
    //First Change will occur after 3 seconds of the initial load
    Timer(const Duration(seconds: 3), () {
      reload();
    });
  }

  void reload(){
    setState(() {
      _enabled =!_enabled;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedCrossFade(
                firstChild: Container(
                  color: Colors.amber,
                  width: 200,
                  height: 200,
                ), 
                secondChild: Container(
                  color: Colors.red,
                  width: 200,
                  height: 200,
                  child: const Center(child: Text('Hello')),
                ), 
                crossFadeState: _enabled ? CrossFadeState.showSecond : CrossFadeState.showFirst, 
                duration: const Duration(seconds: 1)
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: (){
                  reload();
                }, 
                child: const Text('Change') 
              )
            ],
          )
        ),
      ),
    );
  }
}