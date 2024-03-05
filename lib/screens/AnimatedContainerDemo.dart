import 'package:flutter/material.dart';

class AnimatedContainerDemo extends StatefulWidget {
  const AnimatedContainerDemo({super.key});

  @override
  State<AnimatedContainerDemo> createState() => _AnimatedContainerDemoState();
}

class _AnimatedContainerDemoState extends State<AnimatedContainerDemo> {

  var container_height = 100.0;
  var container_weight = 200.0;
  var bgcolor = Colors.amber;
  bool toggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [            
            AnimatedContainer(
              duration: const Duration(seconds: 1),
              color: bgcolor,
              width: container_weight,
              height: container_height,
              // child: Text('Animated Container'),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: (){
                if(toggle){
                  container_height=200;
                  container_weight=100;
                  bgcolor=Colors.blue;
                  toggle=false;
                }else{
                  container_height=100;
                  container_weight=200;
                  bgcolor=Colors.amber;
                  toggle=true;
                }
                setState(() {
                  
                });
              },
              child: const Text('Animate')
            )
          ],
        ),
      ),
    );
  }
}