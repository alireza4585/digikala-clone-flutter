import 'package:flutter/material.dart';

class shopping_basket extends StatefulWidget {
  const shopping_basket({Key? key}) : super(key: key);

  @override
  State<shopping_basket> createState() => _shopping_basketState();
}

class _shopping_basketState extends State<shopping_basket> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Text('hello shopping basket'),
        ),
      ),
    );
  }
}
