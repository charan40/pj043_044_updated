import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';

class HomePage extends StatelessWidget {
  final String text;
  const HomePage({key, @required this.text}) : super(key: key);
  final String Welcome = "Welcome Ms/Mr : ";
  // void _performLogin() {
  //   String username = _usernameController();
  //   String password = _passwordController();
  //
  //   print('login attempt: $username with $password');
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Container(
        alignment: Alignment.center,

        child: Column(
          children: <Widget>[

            Image.asset('./3.png',  height: 500,
                width: 500),
            
            Text(
              Welcome + text,
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/Activity');
              },
              child: const Text('Input!'),
              
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


// import 'package:pj2/flutter_flow/flutter_flow_theme.dart';
// import 'package:pj2/flutter_flow/flutter_flow_util.dart';
// import 'package:pj2/flutter_flow/flutter_flow_widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class HomePage extends StatefulWidget {
//   // const HomePage({required Key key}) : super(key: key);
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   _HomePageWidgetState createState() => _HomePageWidgetState();
// }

// class _HomePageWidgetState extends State<HomePage> {
//   final scaffoldKey = GlobalKey<ScaffoldState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: scaffoldKey,
//       appBar: AppBar(
//         backgroundColor: const Color(0xFFD19F62),
//         automaticallyImplyLeading: false,
//         title: const Text(
//           'Activity Timeline',
//         ),
//         actions: const [],
//         centerTitle: false,
//         elevation: 2,
//       ),
//       backgroundColor: const Color(0xFF7F543A),
//       body: SafeArea(
//         child: GestureDetector(
//           onTap: () => FocusScope.of(context).unfocus(),
//           child: Stack(
//             children: [
//               Stack(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsetsDirectional.fromSTEB(50, 50, 50, 0),
//                     child: Container(
//                       width: 600,
//                       height: 400,
//                       decoration: const BoxDecoration(
//                         color: Color(0xFFDABC83),
//                       ),
//                       child: Stack(
//                         children: [
//                           Padding(
//                             padding:
//                             const EdgeInsetsDirectional.fromSTEB(10, 10, 10, 0),
//                             child: Container(
//                               height: 80,
//                               child: Stack(
//                                 children: [
//                                   Align(
//                                     alignment: const AlignmentDirectional(0, 0),
//                                     child: Container(
//                                       width: MediaQuery.of(context).size.width,
//                                       height: 80,
//                                       decoration: const BoxDecoration(
//                                         color: Color(0xFFEEEEEE),
//                                       ),
//                                       child: const Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 20, 10, 10),
//                                         child: Text(
//                                           'First',
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Padding(
//                             padding:
//                             const EdgeInsetsDirectional.fromSTEB(10, 110, 10, 0),
//                             child: Container(
//                               height: 80,
//                               child: Stack(
//                                 children: [
//                                   Align(
//                                     alignment: const AlignmentDirectional(0, 0),
//                                     child: Container(
//                                       width: MediaQuery.of(context).size.width,
//                                       height: 80,
//                                       decoration: const BoxDecoration(
//                                         color: Color(0xFFEEEEEE),
//                                       ),
//                                       child: const Padding(
//                                         padding: EdgeInsetsDirectional.fromSTEB(
//                                             10, 20, 10, 10),
//                                         child: Text(
//                                           'Second',
//                                         ),
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: const AlignmentDirectional(0, 0),
//                             child: Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(
//                                   10, 100, 10, 0),
//                               child: SizedBox(
//                                 height: 80,
//                                 child: Stack(
//                                   children: [
//                                     Align(
//                                       alignment: const AlignmentDirectional(0, 0),
//                                       child: Container(
//                                         width:
//                                         MediaQuery.of(context).size.width,
//                                         height: 80,
//                                         decoration: const BoxDecoration(
//                                           color: Color(0xFFEEEEEE),
//                                         ),
//                                         child: const Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               10, 20, 10, 10),
//                                           child: Text(
//                                             'Third',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Align(
//                             alignment: const AlignmentDirectional(0, 0),
//                             child: Padding(
//                               padding: const EdgeInsetsDirectional.fromSTEB(
//                                   10, 300, 10, 0),
//                               child: Container(
//                                 height: 80,
//                                 child: Stack(
//                                   children: [
//                                     Align(
//                                       alignment: const AlignmentDirectional(0, 0),
//                                       child: Container(
//                                         width:
//                                         MediaQuery.of(context).size.width,
//                                         height: 80,
//                                         decoration: const BoxDecoration(
//                                           color: Color(0xFFEEEEEE),
//                                         ),
//                                         child: const Padding(
//                                           padding:
//                                           EdgeInsetsDirectional.fromSTEB(
//                                               10, 20, 10, 10),
//                                           child: Text(
//                                             'Forth',
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               Stack(
//                 children: [
//                   Align(
//                     alignment: const AlignmentDirectional(0, 0),
//                     child: Stack(
//                       children: [
//                         Align(
//                           alignment: const AlignmentDirectional(0, 0),
//                           child: Padding(
//                             padding:
//                             const EdgeInsetsDirectional.fromSTEB(0, 550, 0, 0),
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 Navigator.pushReplacementNamed(context, '/Activity');
//                               },
//                               child: const Text('New Activity!'),

//                             ),
//                           ),
//                         ),
//                         const Align(
//                           alignment: AlignmentDirectional(0, 0),
//                           child: Padding(
//                             padding:
//                             EdgeInsetsDirectional.fromSTEB(0, 350, 0, 0),
//                             child: Text(
//                               'Hello World',
//                               textAlign: TextAlign.center,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }