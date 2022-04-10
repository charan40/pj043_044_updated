import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
final String a = "", b = "";
class SelectionPage extends StatefulWidget {
  final String text, text2;
  const SelectionPage({key, this.text, this.text2}) : super(key: key);
  
  @override
  State<SelectionPage> createState() => SelectionPageState();
}

class SelectionPageState extends State<SelectionPage> {
  
  String current_location = "";
  String currentAddress = "";
  
  

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
    // return currentLocation;
  }

  Widget build_get_button(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await getLocation();
      },
      child: Text('Get Initial Location'),
    );
    
  }
  Widget get_current_lati_long(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Text(
        "This is your current location :" + current_location,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }
   Widget build_heading(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(15.0),
        child: Text(
          'Find Me',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
            letterSpacing: 0.5,
          ),
          textAlign: TextAlign.center,
        ));
  }
  Widget go_calculate(BuildContext context) {
    return ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/CurrentActivity');
            },
            child: const Text('Go Calculate!'),
          );
  }
  Widget get_current_address(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Text(
        currentAddress,
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SelectionPage'),
      ),
      body: ListView(physics: const BouncingScrollPhysics(), children: <Widget>[
        Image.asset('./5.png',  height: 500,
              width: 500),
        build_heading(context),
        build_get_button(context),
        get_current_lati_long(context),
        // const SizedBox(height: 10),
        get_current_address(context),
        go_calculate(context),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/Activity');
            },
            child: const Text('Go back!'),
          ),
      ]),
    );
  }
  

  


}



