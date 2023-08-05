import 'package:demo/firstPage.dart';
import 'package:demo/homePage.dart';
import 'package:demo/secondPage.dart';
import 'package:flutter/material.dart';
import 'package:demo/utils/routesName.dart';
class Routes{
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homePage:
        return MaterialPageRoute(builder: (context) => HomePage());
      case RouteName.firstPage:
        return MaterialPageRoute(builder: (context) => FirstPage());
      case RouteName.secondPage:
        return MaterialPageRoute(
            builder: (context) => SecondPage(data:settings.arguments as Map,
                ));
      default:
        return MaterialPageRoute(
            builder: (context) => MaterialApp(
                  home: Scaffold(
                      body: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                      const Color.fromARGB(255, 0, 18, 33),
                      Colors.black,
                      const Color.fromARGB(255, 3, 13, 21)
                    ])),
                    child: Center(
                      child: Text(
                        "Page Can't be Loaded",
                        style:
                            TextStyle(fontWeight: FontWeight.w700, fontSize: 100),
                      ),
                    ),
                  )),
                ));
    }
  }
}
