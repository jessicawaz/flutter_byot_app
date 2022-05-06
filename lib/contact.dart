// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_byot_app/about.dart';
import 'package:flutter_byot_app/home.dart';
import 'package:flutter_byot_app/main.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      return Scaffold(
          appBar: AppBar(
              backgroundColor: AppTheme.themeData.appBarTheme.backgroundColor,
              title: const Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 18.0,
                    bottom: 18.0,
                  ),
                  child: Text(
                    "keep it toasty.",
                    style: TextStyle(color: Color.fromARGB(255, 204, 213, 174)),
                  ),
                ),
              )),
          drawer: Drawer(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                      color: AppTheme.themeData.primaryColor,
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return const HomeDashboard();
                                })));
                              },
                              title: const Text("Home",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black))),
                          ListTile(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return const AboutPage();
                                })));
                              },
                              title: const Text("About",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black))),
                          ListTile(
                              onTap: () {
                                Navigator.pushReplacement(context,
                                    MaterialPageRoute(builder: ((context) {
                                  return const ContactPage();
                                })));
                              },
                              title: const Text("Contact",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black))),
                          ExpansionTile(
                            title: const Text("Menu",
                                style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black)),
                            children: [
                              ListTile(
                                title: const Text(
                                  "Toasts",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                onTap: () {
                                  //   Navigator.pushReplacement(context,
                                  //     MaterialPageRoute(builder: ((context) {
                                  //   return const ToastsMenu();
                                  // })));
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  "Bowls",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black),
                                ),
                                onTap: () {
                                  //   Navigator.pushReplacement(context,
                                  //     MaterialPageRoute(builder: ((context) {
                                  //   return const BowlsMenu();
                                  // })));
                                },
                              ),
                            ],
                          ),
                        ],
                      )))
            ],
          )),
          body: Container(
              width: MediaQuery.of(context).size.width,
              color: AppTheme.themeData.backgroundColor,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: SizedBox(
                          child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Card(
                                  elevation: 2.0,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Text(
                                          "Where to find us",
                                          style: AppTheme
                                              .themeData.textTheme.headline3,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Our hours",
                                            style: TextStyle(fontSize: 18.0),
                                          ),
                                          Text("Mon: 9:00AM-4:00PM"),
                                          Text("Tues: 9:00AM-4:00PM"),
                                          Text("Wed: 9:00AM-4:00PM"),
                                          Text("Thurs: 9:00AM-4:00PM"),
                                          Text("Fri: 9:00AM-4:00PM"),
                                          Text("Sat: 9:00AM-4:00PM"),
                                          Text("Sun: 9:00AM-4:00PM"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons
                                                        .instagramSquare,
                                                    color: AppTheme.themeData
                                                        .primaryColorDark),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .twitterSquare),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .facebookSquare),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .linkedin),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .squarePhone),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )))))
                ],
              )));
    } else {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: AppTheme.themeData.appBarTheme.backgroundColor,
            title: const Padding(
              padding: EdgeInsets.only(
                top: 18.0,
                bottom: 18.0,
              ),
              child: Text(
                "keep it toasty.",
                style: TextStyle(color: Color.fromARGB(255, 204, 213, 174)),
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: ((context) {
                            return const HomeDashboard();
                          })));
                        },
                        child: Text("Home",
                            style: AppTheme.themeData.textTheme.headline2)),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: ((context) {
                            return const AboutPage();
                          })));
                        },
                        child: Text("About",
                            style: AppTheme.themeData.textTheme.headline2)),
                    TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: ((context) {
                            return const ContactPage();
                          })));
                        },
                        child: Text("Contact",
                            style: AppTheme.themeData.textTheme.headline2)),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: PopupMenuButton(
                        child: Text(
                          "Menu",
                          style: AppTheme.themeData.textTheme.headline2,
                        ),
                        itemBuilder: (BuildContext context) => [
                          PopupMenuItem(
                              child: Row(
                            children: const [
                              Text("Toasts"),
                            ],
                          )),
                          PopupMenuItem(
                              child: Row(
                            children: const [
                              Text("Bowls"),
                            ],
                          ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          body: Container(
              width: MediaQuery.of(context).size.width,
              color: AppTheme.themeData.backgroundColor,
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.all(30.0),
                      child: SizedBox(
                          // width: 350,
                          // height: 350,
                          child: Padding(
                              padding: EdgeInsets.all(16.0),
                              child: Card(
                                  elevation: 2.0,
                                  color: Colors.white,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(20.0),
                                        child: Text(
                                          "Where to find us",
                                          style: AppTheme
                                              .themeData.textTheme.headline3,
                                        ),
                                      ),
                                      Column(
                                        children: [
                                          Text(
                                            "Our hours",
                                            style: TextStyle(fontSize: 18.0),
                                          ),
                                          Text("Mon: 9:00AM-4:00PM"),
                                          Text("Tues: 9:00AM-4:00PM"),
                                          Text("Wed: 9:00AM-4:00PM"),
                                          Text("Thurs: 9:00AM-4:00PM"),
                                          Text("Fri: 9:00AM-4:00PM"),
                                          Text("Sat: 9:00AM-4:00PM"),
                                          Text("Sun: 9:00AM-4:00PM"),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              IconButton(
                                                onPressed: () {},
                                                icon: Icon(
                                                    FontAwesomeIcons
                                                        .instagramSquare,
                                                    color: AppTheme.themeData
                                                        .primaryColorDark),
                                              ),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .twitterSquare),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .facebookSquare),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .linkedin),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(FontAwesomeIcons
                                                      .squarePhone),
                                                  color: AppTheme.themeData
                                                      .primaryColorDark),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  )))))
                ],
              )));
    }
  }
}
