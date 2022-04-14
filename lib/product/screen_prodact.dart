import 'dart:io';
import 'package:digikala/main_page.dart';
import 'package:digikala/product/on.dart';
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
  String color1;
  String color2;
  String color3;
  String color4;
  String color5;
  Scrren_Product({
    Key? key,
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
    this.color1 = '',
    this.color2 = '',
    this.color3 = '',
    this.color4 = '',
    this.color5 = '',
  }) : super(key: key);
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
                Space(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget one() {
    Color sid = Colors.white;
    List a = aa(size1, size2, size3, size4, size5);
    List c = cc(color1, color2, color3, color4, color5);
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
            padding: EdgeInsets.only(bottom: corect_padding()),
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
          if (a.length != 0 || c.length != 0) Divider(),
          if (a.length != 0)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                for (var item in a)
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 2.2,
                          fixedSize: Size(27, 37),
                          side: BorderSide(color: sid),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Text(
                        '$item',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                SizedBox(width: 10),
                Text(
                  ':سایز',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10)
              ],
            ),
          if (c.length != 0)
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                for (var item in c)
                  Padding(
                    padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 2.2,
                          fixedSize: Size(27, 37),
                          side: BorderSide(color: sid),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50))),
                      child: Text('$item',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black)),
                    ),
                  ),
                SizedBox(width: 10),
                Text(
                  ':رنگ',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 10)
              ],
            ),
        ],
      ),
    );
  }

  Widget Space() {
    return Container(
      width: double.infinity,
      height: 10,
      color: Colors.grey[300],
    );
  }

  double corect_padding() {
    if (size1 != 0) {
      return 0;
    } else {
      return 10;
    }
  }
}
