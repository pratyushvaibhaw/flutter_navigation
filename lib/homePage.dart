import 'package:demo/firstPage.dart';
import 'package:demo/utils/routesName.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Color.fromARGB(255, 63, 11, 69),
        title: Text(
          'Home Page',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Color.fromARGB(255, 28, 3, 35),
          Color.fromARGB(255, 5, 0, 40),
          Colors.black,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              child: ElevatedButton(
                  // onPressed: () => Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => FirstPage())),
                  // child: Text('First Page')
                  onPressed: () => Navigator.pushNamed(context, RouteName.firstPage),
                  child: Text('First Page')),
            ),
          ],
        ),
      ),
    );
  }
}
