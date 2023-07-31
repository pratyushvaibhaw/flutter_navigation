import 'package:demo/firstPage.dart';
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
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                // onPressed: () => Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => FirstPage())),
                // child: Text('First Page')
                onPressed: () => Navigator.pushNamed(context, 'firstPage'),
                child: Text('First Page')),
          ),
        ],
      ),
    );
  }
}
