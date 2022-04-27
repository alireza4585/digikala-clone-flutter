import 'package:flutter/material.dart';

class digikalaman extends StatefulWidget {
  const digikalaman({Key? key}) : super(key: key);

  @override
  State<digikalaman> createState() => _digikalamanState();
}

class _digikalamanState extends State<digikalaman> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('hello man'),
        ),
      ),
    );
  }
}
