import 'package:flutter/material.dart';


import 'HomePage.dart';

final _usernameController = TextEditingController();
final _passwordController = TextEditingController();

class LoginPage extends StatefulWidget {
  const LoginPage({key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _LoginScreenstate();
}
class _LoginScreenstate extends State<LoginPage> {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LoginPage'),
      ),

      body: Center(
        child: Container(
          padding: const EdgeInsets.all(80.0),
        child: Column(
          children:<Widget>[
            Image.asset('./logo.png'),
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                hintText: 'Username',
              ),
            ),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                hintText: 'Password',
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/HomePage');
                _sendDataToSecondScreen(context);
              },
              child: const Text('Login'),
            ),
            ElevatedButton(
                onPressed:() {
                  Navigator.pushReplacementNamed(context, '/RegistrationPage');
            }, child: const Text('Register'),
            ),
          ],
        ),
      ),
      ),
    );
  }
}
void _sendDataToSecondScreen(BuildContext context) {
    String textToSend = _usernameController.text;
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(text: textToSend,),
        ));
  }
