import 'dart:io';

import 'package:digikala/main_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class Scrren_Product extends StatelessWidget {
  String ima;
  double Price;
  String nam;
  double takfif;
  Scrren_Product(
      {Key? key,
      this.ima = 'no',
      this.Price = 0,
      this.nam = '',
      this.takfif = 0})
      : super(key: key);
  void navigat(BuildContext context, Widget n) {
    Navigator.of(context).pop(
      MaterialPageRoute(builder: (BuildContext context) {
        return n;
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          automaticallyImplyLeading: (Platform.isAndroid) ? true : false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.heart),
              tooltip: 'hello',
              color: Colors.black,
            ),
            SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.shoppingCart),
              color: Colors.black,
            ),
            SizedBox(width: 15),
            IconButton(
              onPressed: () {},
              icon: FaIcon(FontAwesomeIcons.ellipsisV),
              color: Colors.black,
            ),
          ],
          leading: IconButton(
            onPressed: () {
              navigat(context, Main_page());
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                one(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget one() {
    return Container(
      width: double.infinity,
      height: 500,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 300,
            child: Image(image: AssetImage('images/$ima.jpg')),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                '$nam',
                style: TextStyle(fontSize: 25, color: Colors.black),
              ),
            ],
          )
        ],
      ),
    );
  }
}
