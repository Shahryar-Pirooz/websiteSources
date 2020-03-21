import 'package:flutter/material.dart';

class MyColors {

  static var _primary = 0xff2ecc71;
  static Color primaryDark = Color(0xff27ae60);
  static Color black = Color(0xff2c3e50);
  static Color white = Color(0xffecf0f1);
  
  static  MaterialColor primary = MaterialColor(
    _primary,
    <int, Color>{
       50: Color.fromRGBO(26, 188, 156,.1),
       100: Color.fromRGBO(26, 188, 156,.2),
       200: Color.fromRGBO(26, 188, 156,.3),
       300: Color.fromRGBO(26, 188, 156,.4),
       400: Color.fromRGBO(26, 188, 156,.5),
       500: Color.fromRGBO(26, 188, 156,.6),
       600: Color.fromRGBO(26, 188, 156,.7),
       700: Color.fromRGBO(26, 188, 156,.8),
       800: Color.fromRGBO(26, 188, 156,.9),
       900: Color.fromRGBO(26, 188, 156,1),
    },
  );
}