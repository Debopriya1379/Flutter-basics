import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/SharedPreference/Home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

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
          width: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () async{
                  await prefs.setBool('isloggedIn', true);
                  Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => HomeSP(),
                  ));
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}