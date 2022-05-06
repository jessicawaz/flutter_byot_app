// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_byot_app/contact.dart';
import 'package:flutter_byot_app/home.dart';
import 'package:flutter_byot_app/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

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
        body: Container(
            width: MediaQuery.of(context).size.width,
            color: AppTheme.themeData.backgroundColor,
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.all(20.0),
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
                                      "Our story",
                                      style: AppTheme
                                          .themeData.textTheme.headline3,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(18.0),
                                          child: SizedBox(
                                              width: double.infinity,
                                              child: Column(children: [
                                                Text(
                                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
                                                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                                                    "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
                                                    "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla  "
                                                    "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa "
                                                    "qui officia deserunt mollit anim id est laborum."),
                                              ])))
                                    ],
                                  )
                                ],
                              )))))
            ])),
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
      );
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
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.all(20.0),
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
                                      "Our story",
                                      style: AppTheme
                                          .themeData.textTheme.headline3,
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.all(18.0),
                                          child: SizedBox(
                                              width: double.infinity,
                                              child: Column(children: [
                                                Text(
                                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit"
                                                    "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
                                                    "Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris "
                                                    "nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "
                                                    "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla  "
                                                    "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa "
                                                    "qui officia deserunt mollit anim id est laborum."),
                                              ])))
                                    ],
                                  )
                                ],
                              )))))
            ])),
      );
    }
  }
}
