import 'package:flutter/material.dart';

class MyListWheelScrollView extends StatefulWidget {
  const MyListWheelScrollView({super.key});

  @override
  State<MyListWheelScrollView> createState() => _MyListWheelScrollViewState();
}

class _MyListWheelScrollViewState extends State<MyListWheelScrollView> {

  var arrIndex = [
    1,2,3,4,5,6,7,8,9,10
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListWheelScrollView(
          itemExtent: 200,
          children: arrIndex.map((value) => 
            Container(
              height: 100, 
              width: double.infinity, 
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(14)
              ),
            )).toList(),
        ),
      ),
    );
  }
}