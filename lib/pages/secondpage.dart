// import 'dart:developer';
// import 'dart:ui';

// import 'package:about_me/res/Srtings.dart';
// import 'package:about_me/res/colors.dart';
// import 'package:about_me/res/widgets.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class SecondPage extends StatefulWidget {
//   @override
//   _SecondPageState createState() => _SecondPageState();
// }

// double _width;

// double _heigh;

// Size _display;

// class _SecondPageState extends State<SecondPage> {
//   @override
//   Widget build(BuildContext context) {
//     _display = MediaQuery.of(context).size;
//     _width = _display.width;
//     _heigh = _display.height;

//     return SafeArea(
//       child: Scaffold(
//         body: Center(
//           child: Stack(children: <Widget>[
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.center,
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 Flexible(
//                   child: top(),
//                   flex: 1,
//                 ),
//                 Flexible(
//                   child: down(),
//                   flex: 5,
//                 ),
//                 // Flexible(child: rightSide(), flex: 1,),
//               ],
//             ),
//           ]),
//         ),
//       ),
//     );
//   }

//   Widget down() {
//     return Hero(
//         tag: "White",
//         child: Container(
//             color: MyColors.white,
//             child: Stack(
//               children: <Widget>[
//                 Center(),
//                 Positioned(
//                   top: 200,
//                   bottom: 32,
//                   left: 116,
//                   right: _width / 2,
//                   child: Container(
//                     height: _heigh / 2,
//                     child: SingleChildScrollView(
//                       scrollDirection: Axis.vertical,
//                       child: Text(
//                         myInfo,
//                         textAlign: TextAlign.justify,
//                         style: GoogleFonts.ubuntu(fontSize: 20),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 116,
//                   bottom: 32,
//                   left: _width / 2,
//                   right: 116,
//                   child: Container(
//                     height: 100,
//                     width: 100,
//                     decoration: BoxDecoration(
//                         shape: BoxShape.rectangle,
//                         image: DecorationImage(image: NetworkImage(myImage))),
//                   ),
//                 )
//               ],
//             )));
//   }

//   Widget top() {
//     return Hero(
//         tag: "Green",
//         child: Container(
//             decoration: BoxDecoration(
//                 color: MyColors.primaryDark,
//                 gradient: LinearGradient(
//                     colors: [MyColors.primary, MyColors.primaryDark])),
//             child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 mainAxisSize: MainAxisSize.max,
//                 children: <Widget>[])));
//   }
// }
