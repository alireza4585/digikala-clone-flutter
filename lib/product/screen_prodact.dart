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
  double star;
  int size1;
  int size2;
  int size3;
  int size4;
  int size5;
  Color color;
  Scrren_Product(
      {Key? key,
      this.ima = 'no',
      this.Price = 0,
      this.nam = '',
      this.takfif = 0,
      this.star = 0,
      this.size1 = 0,
      this.size2 = 0,
      this.size3 = 0,
      this.size4 = 0,
      this.size5 = 0,
      this.color = Colors.amberAccent})
      : super(key: key);
  void navigat(BuildContext context, Widget n) {
    Navigator.of(context).pop(
      MaterialPageRoute(builder: (BuildContext context) {
        return n;
      }),
    );
  }

  double value_padding = 10;
  List a = [45, 56];
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
    // while (size1 != 0) {
    //   a.add(size1);
    // }
    return Container(
      width: double.infinity,
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
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(bottom: value_padding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  '$star',
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                SizedBox(width: 17)
              ],
            ),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // for (var item in a)
              Padding(
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    width: 42,
                    height: 28,
                    alignment: Alignment.center,
                    color: Colors.grey[300],
                    child: Text('$size1', textAlign: TextAlign.center),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
List sizee(){
  while()
}