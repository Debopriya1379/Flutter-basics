import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/SharedPreference/Home.dart';
import 'package:flutter_demo_1/screens/SharedPreference/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SPFlash extends StatefulWidget {
  const SPFlash({super.key});

  @override
  State<SPFlash> createState() => _SPFlashState();
}

class _SPFlashState extends State<SPFlash> {

  @override
  void initState() {
    super.initState();
    whereToGo();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text('Shared Preference'),
        ),
      ),
    );
  }
  
  void whereToGo() async{

    var sharedPref = await SharedPreferences.getInstance();

    var isLoggedIn = sharedPref.getBool('isloggedIn');

    Timer(Duration(seconds: 3), (){
      if(isLoggedIn!=null) {
        if(isLoggedIn) {
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomeSP(),
          ));
        } else {
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Login(),
          ));
        }
      } else {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => Login(),
        ));
      }
    });
  }
}