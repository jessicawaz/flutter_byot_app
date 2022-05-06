import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_byot_app/about.dart';
import 'package:flutter_byot_app/contact.dart';
import 'package:flutter_byot_app/main.dart';

final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({Key? key}) : super(key: key);

  @override
  _HomeDashboardState createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS) {
      return Scaffold(
        key: _scaffoldKey,
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
        body: Text(
          "Home Page",
          style: AppTheme.themeData.textTheme.headline3,
        ),
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
        body: Text(
          "Home Page",
          style: AppTheme.themeData.textTheme.headline3,
        ),
      );
    }
  }
}
