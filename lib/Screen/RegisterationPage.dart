import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegistrationPage'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('./2.png',  height: 1000,
              width: 500),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/HomePage');
              },
              child: const Text('Register'),
            ),
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
