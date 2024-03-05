import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;   // takes no argument and returns nothing (link button click just performs an action)

  RoundedButton({
    required this.btnName,
    this.icon, 
    this.bgColor = Colors.blue, 
    this.textStyle, 
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
    onPressed: ()=> {
      callback!()
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10)
      ),
    ), 
    child: icon!=Null ? Row(
      children: [
        icon!,
        Text(btnName)
      ],
    ) 
    : 
    Text(
      btnName,
    )
    );
  }
}