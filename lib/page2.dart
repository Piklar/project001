import 'package:flutter/material.dart';
import 'page1.dart';
import 'homepage_EDDM.dart';

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Welcome to Page 2!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomepageEddm()));
            },
              child: Text("Redirect to Home Page"),
            ),
            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page1()));
            },
              child: Text("Redirect to Page 1"),
            ),
          ],
        ),
      ),
    );
  }
}
