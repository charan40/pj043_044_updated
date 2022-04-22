import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:geolocator/geolocator.dart';
import 'dart:math';

import 'Calculation.dart';

TextEditingController Latitude_initialController = TextEditingController();
TextEditingController Longitude_initialController = TextEditingController();
TextEditingController Latitude_DestController = TextEditingController();
TextEditingController Longitude_DestController = TextEditingController();

class CurrentActivity extends StatefulWidget {
  final text, text2, text3;
  const CurrentActivity({key, this.text, this.text2, this.text3}) : super(key: key);
  
  @override
  State<CurrentActivity> createState() => CurrentActivityState();
  
}
class CurrentActivityState extends State<CurrentActivity>{
  String current_location = "";
  var distance = 0.00;

  getLocation() async {
    var serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled');
    }
    var permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      current_location =
          "Latitude: ${position.latitude} Longtitude: ${position.longitude}";
    });
    
    try {} catch (error) {
      print(error);
    }
    
  }
  getDistance() async {
      var Lat1 = double.parse(Latitude_initialController.text);
      var Lat2 = double.parse(Latitude_DestController.text);
      var Lon1 = double.parse(Longitude_initialController.text);
      var Lon2 = double.parse(Longitude_DestController.text);
      var R = 6371000.00;
      var D1 = (Lat2-Lat1) * pi/180.00;
      var D2 = (Lon2-Lon1) * pi/180.00;
      var a = sin(D1/2) * sin(D1/2) + cos(Lat1) * cos(Lat2) * sin(D2/2) * sin(D2/2);
      var c = 2 * atan2(sqrt(a), sqrt(1-a));
      var d = (R * c) / 1000.00;
      setState(() {
        distance = d;
    });
    }

  Widget build_get_button(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await getLocation();
      },
      child: Text('Get Destination Location'),
    );
    
  }
  Widget build_get_distance(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await getDistance();
      },
      child: Text('Get Distance'),
    );
    
  }
  Widget get_Distance(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Text(
        "you are on :" + distance.toString() +" km "+ " From the start",
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }
  Widget get_Destination_location(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Text(
        "This is your Destination location :" + current_location,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }

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
            Text("Your Weight: " + widget.text +" "+ "Your Age: "+ widget.text2 + " " +"Your initial location: "+ widget.text3,
            style: const TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
            fontSize: 30,
            ),),
            build_get_button(context),
            get_Destination_location(context),
            TextFormField(
              controller: Latitude_initialController,
              decoration: const InputDecoration(
                hintText: 'Latitude - Initial',
              ),
            ),
            TextFormField(
              controller: Longitude_initialController,
              decoration: const InputDecoration(
                hintText: 'Longitude - Initial',
              ),
            ),
            TextFormField(
              controller: Latitude_DestController,
              decoration: const InputDecoration(
                hintText: 'Latitude - Destination',
              ),
            ),
            TextFormField(
              controller: Longitude_DestController,
              decoration: const InputDecoration(
                hintText: 'longitude - Destination',
              ),
            ),
            build_get_distance(context),
            get_Distance(context),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Calculation');
                _sendDataToSecondScreen2(context);
              },
              child: const Text('Calculate'),
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
  void _sendDataToSecondScreen2(BuildContext context) {
    String distance1 = distance.toStringAsFixed(2);
    String age = widget.text;
    String weight = widget.text2;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Calculation(text: age, text2: weight, text3: distance1),
        ));
    
  }
}
