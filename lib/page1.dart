import 'package:flutter/material.dart';
import 'page2.dart';
import 'homepage_EDDM.dart';

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 1'),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
            'Welcome to Page 1!',
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
