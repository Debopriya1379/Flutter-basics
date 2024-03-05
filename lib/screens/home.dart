import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_demo_1/screens/Profile.dart';
import 'package:flutter_demo_1/widgets/rounded_button.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _nameController = TextEditingController(); 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 200,
              height: 80,
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'Enter name'
                ),
              ),
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => Profile(_nameController.text.toString()))
                );
              } , 
              child: const Text('Next')
            )
          ],
        ),
      )
    );
  }
}
 