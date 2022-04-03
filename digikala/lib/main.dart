import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        appBar: _getappbar(),
        body: SafeArea(child: _getcolum()),
      ),
    );
  }

  PreferredSizeWidget _getappbar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          Expanded(
            child: Card(
              color: Colors.grey[300],
              child: Container(
                alignment: Alignment.centerRight,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'digikala',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 5),
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Text(
                        'جستجو در',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: FaIcon(FontAwesomeIcons.search),
                      color: Color.fromARGB(202, 0, 0, 0),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _getcolum() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 12),
          _broshor(),
          SizedBox(height: 12),
          _icons(),
          SizedBox(height: 12),
          _amazing(),
          _icon2()
        ],
      ),
    );
  }

  Widget _amazing() {
    var list = ['تیشرت', 'الکل', 'کمربند', 'کوله'];
    return Container(
      width: double.infinity,
      height:
          200, ///////////////////////////////////////////////////////////////////
      alignment: Alignment.centerRight,
      color: Colors.red,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            for (var i in list)
              TextButton(
                onPressed: () {},
                child: Card(
                  child: Column(
                    children: [
                      Container(
                        width: 100,
                        height: 150,
                        padding: EdgeInsets.only(top: 10),
                        alignment: Alignment.topCenter,
                        child: Image(image: AssetImage('images/$i.jpg')),
                      ),
                      Text(
                        '$i',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                            fontFamily: 'vazir'),
                      ),
                    ],
                  ),
                ),
              ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.red,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 15)),
                  Text(
                    'پیشنهاد',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'شگفت',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'انگیز',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ])),
    );
  }

  Widget _broshor() {
    var lista = ['1.jpg', '2.jpg', '3.jpg', '4.jpg', '5.jpg'];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (var i in lista)
            Card(
              child: Expanded(
                child: Container(
                  height: 120,
                  child: Image(image: AssetImage('images/$i')),
                ),
              ),
            )
        ],
      ),
    );
  }

  Widget _icons() {
    var list = ['i1', 'i2', 'i3', 'i4', 'i5', 'i6', 'i3', 'i4'];
    return Wrap(
      alignment: WrapAlignment.end,
      runSpacing: 15,
      spacing: 26,
      children: [
        for (var i in list)
          Card(
            child: Container(
              width: 60,
              height: 60,
              child: Image(
                image: AssetImage('images/$i.png'),
              ),
            ),
          )
      ],
    );
  }

  Widget _icon2() {
    var list = ['r1.jpg', 'r2.jpg', 'r3.jpg', 'r4.gif'];
    return Wrap(
      spacing: 20,
      children: [
        for (var i in list)
          Card(
            child: Container(
              width: 175,
              height: 175,
              child: Image(image: AssetImage('images/$i')),
            ),
          ),
      ],
    );
  }
}

class mahsol extends StatelessWidget {
  const mahsol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          ),
      ),
    );
  }
}
