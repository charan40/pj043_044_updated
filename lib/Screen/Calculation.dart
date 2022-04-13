import 'package:flutter/material.dart';
TextEditingController velocityController = TextEditingController();
TextEditingController metController = TextEditingController();
class Calculation extends StatefulWidget {
  final String text, text2, text3;
  const Calculation({key, this.text, this.text2, this.text3}) : super(key: key);
  @override
  State<Calculation> createState() => CalculationState();
}
class CalculationState extends State<Calculation> {
  double time1 = 0.00;
  double cal = 0.00;
   getTime() async {
      var  S = double.parse(widget.text3); 
      var V = double.parse(velocityController.text); 
      var T = S / V;
      setState(() {
        time1 = T; 
    });
    }
  getCal() async {
    var C = double.parse(metController.text) * time1 * double.parse(widget.text);
    setState(() {
        cal = C; 
    });
  }
  Widget build_get_button(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await getTime();
      },
      child: Text('Get Estimate Time'),
    );
    
  }
   Widget build_get_Cbutton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await getCal();
      },
      child: Text('Get Estimate Calcories Burn'),
    );
    
  }
  Widget get_Time(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Text(
        "Your estimate time for the Activity: " + time1.toString() +" hours.",
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }
  Widget get_Cal(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50),
      child: Text(
        "Your Calories Burn of this activity: " + cal.toStringAsFixed(2) + " k/cal",
        style: const TextStyle(
          fontWeight: FontWeight.w800,
          letterSpacing: 0.5,
          fontSize: 30,
        ),
      ),
    );
  }
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculation'),
      ),
      body: Center(child: Column(children: <Widget>[
        Image.asset('./8.png',  height: 400,
                width: 700),
        Text("Your Age: " + widget.text2 + " ",
    style: const TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
            fontSize: 30,
            ),),
    Text("Your  Weight: " + widget.text + " " + "kg",
    style: const TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
            fontSize: 30,
            ),),
    Text("Distance: " + widget.text3 + " " + "km",
    style: const TextStyle(
            fontWeight: FontWeight.w800,
            letterSpacing: 0.5,
            fontSize: 30,
            ),),
    TextFormField(
              controller: velocityController,
              decoration: const InputDecoration(
                hintText: 'Input your estimate Velocity',
              ),
            ),
      build_get_button(context),
      get_Time(context),
    TextFormField(
              controller: metController,
              decoration: const InputDecoration(
                hintText: 'Input your estimate MET value',
              ),
            ),
      build_get_Cbutton(context),
      get_Cal(context),
      ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/');
              },
              child: const Text('Done'),
            ),
      ]),)
    );
  }
}
