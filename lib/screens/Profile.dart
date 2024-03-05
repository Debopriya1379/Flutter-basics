import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  var name ;
  Profile(this.name);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height : 100,
            ),
            Text('Welcome $name'),
            const SizedBox(
              height : 50,
            ),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)
            )
          ],
        ),
      ),
    );
  }
}