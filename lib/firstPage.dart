import 'package:demo/utils/routesName.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'First Page',
          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(
                        context, RouteName.secondPage, arguments: {
                      'str': 'Second Page (text passed from First Page)',
                      'num': 0
                    }),
                child: Text('Second Page')),
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Go Back')),
          )
        ],
      ),
    );
  }
}
