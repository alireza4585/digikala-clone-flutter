import 'package:flutter/material.dart';

class group extends StatefulWidget {
  const group({Key? key}) : super(key: key);

  @override
  State<group> createState() => _groupState();
}

class _groupState extends State<group> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.red),
        ),
        body: Center(
          child: Text('hello group'),
        ),
      ),
    );
  }
}
