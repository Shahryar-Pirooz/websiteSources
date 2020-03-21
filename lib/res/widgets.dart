import 'package:about_me/res/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';


  Widget titleText(String text,{Color color , double size }){
    return Text(
      text , 
      style: GoogleFonts.ubuntu(color: color , fontSize: size ),
      textAlign: TextAlign.center,
      ); 
  }

    Widget androidText (String text,{Color color , double size }){
      
    return Text(
      text , 
      textAlign: TextAlign.center,
      style:TextStyle(
        fontFamily: "Steinerlight" ,
         color: color ,
          fontSize: size ,
           fontWeight: FontWeight.bold),
      ); 
  }

  