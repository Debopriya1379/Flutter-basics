import 'package:flutter/material.dart';

class MyRangeSlider extends StatefulWidget {
  const MyRangeSlider({super.key});

  @override
  State<MyRangeSlider> createState() => _MyRangeSliderState();
}

class _MyRangeSliderState extends State<MyRangeSlider> {
  RangeValues values = RangeValues(0, 1);
  @override
  Widget build(BuildContext context) {

    RangeLabels Labels = RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Range slider'),
            ),
            SizedBox(
              width: 300,
              child: RangeSlider(
                values: values,
                labels: Labels,
                activeColor: Colors.green,
                inactiveColor: Colors.green.shade100,
                divisions: 10,
                min: 0,
                max: 100,
                onChanged: (newVal){
                  values = newVal;
                  // print('start : ${newVal.start}  end : ${newVal.end}');
                  setState(() {
                    
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}