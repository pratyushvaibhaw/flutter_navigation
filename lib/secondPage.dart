import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  dynamic data;
  SecondPage({super.key, required this.data});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    // Fetching the element passed from first page using Navigator.pushed()

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
              widget.data['str'] + widget.data['num'].toString(),
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
