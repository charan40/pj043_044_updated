import 'package:flutter/material.dart';
import 'package:pj2/Screen/LoginPage.dart';
import 'package:pj2/Screen/RegisterationPage.dart';
import 'package:pj2/Screen/HomePage.dart';
import 'package:pj2/Screen/ActivityPage.dart';
import 'package:pj2/Screen/SelectionPage.dart';
import 'package:pj2/Screen/CurrentActivity.dart';
import 'package:pj2/common/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Burn Cal',
      theme: appTheme,
      //TODO 1:  Update Route Table HERE
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/RegistrationPage': (context) => const RegistrationPage(),
        '/HomePage': (context) => const HomePage(),
        '/Activity': (context) => const ActivityPage(),
        '/SelectionPage': (context) => const SelectionPage(),
        '/CurrentActivity': (context) => const CurrentActivity(),
        // ExtractArgumentsScreen.routeName: (context) =>
        // const ExtractArgumentsScreen(),

      },
    );
  }
}





// class ScreenArguments {
//   final String title;
//   final String message;
//
//   ScreenArguments(this.title, this.message);
// }
//
// // A Widget that extracts the necessary arguments from
// // the ModalRoute.
// class ExtractArgumentsScreen extends StatelessWidget {
//   const ExtractArgumentsScreen({Key? key}) : super(key: key);
//
//   static const routeName = '/extractArguments';
//
//   @override
//   Widget build(BuildContext context) {
//     // Extract the arguments from the current ModalRoute
//     // settings and cast them as ScreenArguments.
//     final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.title),
//       ),
//       body: Center(
//         child: Text(args.message),
//       ),
//     );
//   }
// }