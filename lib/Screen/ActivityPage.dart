import 'package:flutter/material.dart';

import 'SelectionPage.dart';
TextEditingController WeightController = TextEditingController();
TextEditingController AgeController = TextEditingController();


class ActivityPage extends StatelessWidget {
  const ActivityPage({key}) : super(key: key);
  final String please = "Please in put your information here";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Activity'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('./4.png',  height: 500,
                width: 500),
            Text(please,
            style: TextStyle(fontSize: 24),
            ),
            TextFormField(
              controller: WeightController,
              decoration: const InputDecoration(
                hintText: 'Weight',
              ),
              validator: (value) {
              if (value.isEmpty) {
                return 'Enter Weight';
               }
                return null;
               },
            ),
            TextFormField(
              controller: AgeController,
              decoration: const InputDecoration(
                hintText: 'Age',
              ),
              validator: (value) {
              if (value.isEmpty) {
                return 'Enter Age';
               }
                return null;
               },
            ),
            FloatingActionButton(
              onPressed: () {
              showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    content: Text(AgeController.text),
                    
              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/SelectionPage');
                _sendDataToSecondScreen1(context);
              },
              child: const Text('Go Calculation'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Back!'),
            ),
          ],
        ),
      ),
    );
  }
}

void _sendDataToSecondScreen1(BuildContext context) {
    String textToSend = WeightController.text;
    String textToSend2 = AgeController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SelectionPage(text: textToSend, text2: textToSend2),
        ));
  }