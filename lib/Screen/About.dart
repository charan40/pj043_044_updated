import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('./Ab.png',  height: 1000,
              width: 500),           
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Go back!'),
            ),
          ],
        ),
      ),
    );
  }
}
