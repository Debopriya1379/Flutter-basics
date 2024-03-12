import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/SharedPreference/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeSP extends StatefulWidget {
  const HomeSP({super.key});

  @override
  State<HomeSP> createState() => _HomeSPState();
}

class _HomeSPState extends State<HomeSP> {

  late SharedPreferences prefs;

  @override
  void initState() {
    super.initState();
    getPrefs();
  }

  Future<void> getPrefs() async{
    prefs = await SharedPreferences.getInstance();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Wlcome'),
              SizedBox(height: 20),
              FloatingActionButton(onPressed: ()async{
                  await prefs.setBool('isloggedIn', false);
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Login(),
                  ));
                },
                child: const Text('Logout')
              )
            ],
          )
        ),
      ),
    );
  }
}