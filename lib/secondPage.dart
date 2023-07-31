import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String str;
  final int num;
  const SecondPage({super.key, required this.str, this.num = 2});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    // Fetching the element passed from first page using Navigator.pushed()
    final arguments = ModalRoute.of(context)!.settings.arguments as Map;
    String str = arguments['str'];
    int num = arguments['num'];
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              "$str\n this number is has been passed from first page i.e$num",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
          ),
          Container(
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
