import 'package:about_me/pages/secondpage.dart';
import 'package:about_me/res/colors.dart';
import 'package:about_me/res/widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

import 'pages/firstpage.dart';

void main() {
  runApp(MaterialApp(
    title: "Shahryar",
    theme: ThemeData(
      primarySwatch: MyColors.primary,
    ),
    darkTheme: ThemeData.dark(),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop ||
          sizingInformation.deviceScreenType == DeviceScreenType.Tablet) {
        return SafeArea(
          child: Scaffold(
            body: Stack(
              children: <Widget>[
                FirstPage(),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: AppBar(
                    primary: false,
                    backgroundColor: Colors.transparent,
                    brightness: Brightness.dark,
                    elevation: 0.0,
                    title: titleText("About me"),
                    actions: <Widget>[
                      IconButton(
                        onPressed: _gitHub,
                        color: MyColors.white,
                        icon: FaIcon(FontAwesomeIcons.github),
                      ),
                      IconButton(
                        onPressed: _gitLab,
                        color: MyColors.white,
                        icon: FaIcon(FontAwesomeIcons.gitlab),
                      ),
                      IconButton(
                        onPressed: _linkedIn,
                        color: MyColors.white,
                        icon: FaIcon(FontAwesomeIcons.linkedinIn),
                      ),
                      IconButton(
                        onPressed: _telegram,
                        color: MyColors.white,
                        icon: FaIcon(FontAwesomeIcons.telegram),
                      ),
                      IconButton(
                        onPressed: _email,
                        color: MyColors.white,
                        icon: FaIcon(FontAwesomeIcons.envelope),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      } else {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              brightness: Brightness.dark,
              title: titleText("About me", color: MyColors.white),
              centerTitle: true,
            ),
            drawer: Drawer(
              elevation: 10,
              child: ListView(
                children: <Widget>[
                  RaisedButton.icon(
                    onPressed: _gitHub,
                    color: MyColors.primary,
                    colorBrightness: Brightness.dark,
                    icon: FaIcon(FontAwesomeIcons.github),
                    label: Text("Github"),
                  ),
                  RaisedButton.icon(
                    onPressed: _gitLab,
                    color: MyColors.primary,
                    colorBrightness: Brightness.dark,
                    icon: FaIcon(FontAwesomeIcons.gitlab),
                    label: Text("Gitlab"),
                  ),
                  RaisedButton.icon(
                    onPressed: _linkedIn,
                    color: MyColors.primary,
                    colorBrightness: Brightness.dark,
                    icon: FaIcon(FontAwesomeIcons.linkedin),
                    label: Text("Linkedin"),
                  ),
                  RaisedButton.icon(
                    onPressed: _telegram,
                    color: MyColors.primary,
                    colorBrightness: Brightness.dark,
                    icon: FaIcon(FontAwesomeIcons.telegram),
                    label: Text("Telegram"),
                  ),
                  RaisedButton.icon(
                    onPressed: _email,
                    colorBrightness: Brightness.dark,
                    color: MyColors.primary,
                    icon: FaIcon(FontAwesomeIcons.envelope),
                    label: Text("Email"),
                  )
                ],
              ),
            ),
            body: FirstPage(),
          ),
        );
      }
    });
  }
}

_gitHub() async {
  const url = 'https://github.com/Shahryar-Pirooz/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_gitLab() async {
  const url = 'https://gitlab.com/Shahryar-Pirooz/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_linkedIn() async {
  const url = 'https://www.linkedin.com/in/Shahryar-Pirooz/';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_telegram() async {
  const url = 'https://telegram.me/Mister_Ess';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_email() async {
  const url = 'mailto:dev.shahryar@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
