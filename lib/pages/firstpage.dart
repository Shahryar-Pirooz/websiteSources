import 'dart:ui';

import 'package:about_me/pages/secondpage.dart';
import 'package:about_me/res/Srtings.dart';
import 'package:about_me/res/colors.dart';
import 'package:about_me/res/widgets.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

double _width;

double _heigh;

Size _display;

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    _display = MediaQuery.of(context).size;
    _width = _display.width;
    _heigh = _display.height;

   return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Mobile) {
          return Container(
            height: _heigh,
            width: _width,
            color: MyColors.primary,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                    child: leftSideMobile(),
                    flex: 1,
                  ),
                  Flexible(
                    child: rightSideMobile(),
                    flex: 1,
                  ),
                  // Flexible(child: rightSide(), flex: 1,),
                ],
              ),
            ),
          );
        } if(sizingInformation.deviceScreenType == DeviceScreenType.Desktop ||
        sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
          return Container(
            height: _heigh,
            width: _width,
            color: MyColors.primary,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  Flexible(
                    child: leftSide(),
                    flex: 1,
                  ),
                  Flexible(
                    child: rightSide(),
                    flex: 1,
                  ),
                  // Flexible(child: rightSide(), flex: 1,),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Widget leftSide() {
    return Hero(
        tag: "White",
        child: Container(
            color: MyColors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerRight,
                    child: titleText("He", size: 85, color: MyColors.primary)),
                Align(
                    alignment: Alignment.centerRight,
                    child: titleText("I'", size: 85, color: MyColors.primary)),
                Align(
                    alignment: Alignment.centerRight,
                    child: titleText("Sha", size: 90, color: MyColors.primary)),
              ],
            )));
  }

  Widget rightSide() {
    return Hero(
        tag: "Green",
        child: Container(
            decoration: BoxDecoration(
                color: MyColors.primaryDark,
                gradient: LinearGradient(
                    colors: [MyColors.primary, MyColors.primaryDark])),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Align(
                    alignment: Alignment.centerLeft,
                    child: titleText("loo", size: 85, color: MyColors.white)),
                Row(
                  children: <Widget>[
                    Align(
                        alignment: Alignment.centerLeft,
                        child: titleText("m", size: 85, color: MyColors.white)),
                    androidText(" \nandroid \n developer",
                        size: 30, color: MyColors.black)
                  ],
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child:
                        titleText("hryar.", size: 90, color: MyColors.white)),
              ],
            )));
  }
}

Widget leftSideMobile() {
  return Hero(
      tag: "White",
      child: Container(
          color: MyColors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerRight,
                  child: titleText("He", size: 45, color: MyColors.primary)),
              Align(
                  alignment: Alignment.centerRight,
                  child: titleText("I'", size: 45, color: MyColors.primary)),
              Align(
                  alignment: Alignment.centerRight,
                  child: titleText("Sha", size: 48, color: MyColors.primary)),
            ],
          )));
}

Widget rightSideMobile() {
  return Hero(
      tag: "Green",
      child: Container(
          decoration: BoxDecoration(
              color: MyColors.primaryDark,
              gradient: LinearGradient(
                  colors: [MyColors.primary, MyColors.primaryDark])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Align(
                  alignment: Alignment.centerLeft,
                  child: titleText("loo", size: 45, color: MyColors.white)),
              Row(
                children: <Widget>[
                  Align(
                      alignment: Alignment.centerLeft,
                      child: titleText("m", size: 45, color: MyColors.white)),
                  androidText(" \nandroid \n developer",
                      size: 15.75, color: MyColors.black)
                ],
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: titleText("hryar.", size:48, color: MyColors.white)),
            ],
          )));
}
