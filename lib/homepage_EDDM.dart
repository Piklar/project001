import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';

class HomepageEddm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Welcome to Home Page!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page1()));
            },
              child: Text("Redirect to Page 1"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page2()));
            },
              child: Text("Redirect to Page 2"),
            ),
          ],
        ),
      ),
    );
  }
}
