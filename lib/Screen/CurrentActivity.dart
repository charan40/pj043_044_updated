import 'package:flutter/material.dart';
// import 'dart:async';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class CurrentActivity extends StatelessWidget {
  const CurrentActivity({key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CurrentActivity'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('./6.png',  height: 500,
                width: 500),
            TextFormField(
              // controller: _username,
              decoration: const InputDecoration(
                hintText: 'Latitude - Initial',
              ),
            ),
            TextFormField(
              // controller: _username,
              decoration: const InputDecoration(
                hintText: 'Longitude - Initial',
              ),
            ),
            TextFormField(
              // controller: _username,
              decoration: const InputDecoration(
                hintText: 'Latitude - Destination',
              ),
            ),
            TextFormField(
              // controller: _username,
              decoration: const InputDecoration(
                hintText: 'longitude - Destination',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Done'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/SelectionPage');
              },
              child: const Text('Go Back!'),
            ),
          ],
        ),
      ),
    );
  }
}
