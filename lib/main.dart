import 'package:demo/firstPage.dart';
import 'package:demo/homePage.dart';
import 'package:demo/secondPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //primaryColor: Color.fromARGB(255, 168, 239, 207),
          primarySwatch: Colors.purple),
      //home: HomePage(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        'firstPage': (context) => FirstPage(),
        'secondPage': (context) => SecondPage(
              str: 'Hello World',
            ),
      },
    );
  }
}
