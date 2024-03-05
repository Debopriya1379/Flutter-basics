import 'package:flutter/material.dart';

class AnimatedOpacityDemo extends StatefulWidget {
  const AnimatedOpacityDemo({super.key});

  @override
  State<AnimatedOpacityDemo> createState() => _AnimatedOpacityDemoState();
}

class _AnimatedOpacityDemoState extends State<AnimatedOpacityDemo> {
  var container_opacity=1.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedOpacity(
                opacity: container_opacity,
                duration: const Duration(seconds: 1),
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.amber,
                ),
              ),
              const SizedBox(height: 30,),
              ElevatedButton(
                onPressed: (){
                  if(container_opacity==1.0){
                    container_opacity=0.0;
                  }else{
                    container_opacity=1.0;
                  }
                  setState(() {
                    
                  });
                }, 
                child: const Text('Animate')
              )
            ],
          ),
        ),
      ),
    );
  }
}