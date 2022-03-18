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
          SizedBox(height: 20),
          _amazing(),
        ],
      ),
    );
  }

  Widget _amazing() {
    var list = ['تیشرت', 'الکل', 'کمربند', 'کوله'];
    return Container(
      width: double.infinity,
      height:
          500, ///////////////////////////////////////////////////////////////////
      alignment: Alignment.centerRight,
      color: Colors.red,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: <Widget>[
            for (var i in list)
              Card(
                child: Column(
                  children: [
                    Container(
                      width: 300,
                      height: 150,
                      padding: EdgeInsets.only(top: 10),
                      alignment: Alignment.topCenter,
                      child: Image(image: AssetImage('images/$i.jpg')),
                    ),
                    Text('$i'),
                  ],
                ),
              ),
            SizedBox(
              width: 20,
            ),
            Container(
              color: Colors.red,
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 7)),
                  Text(
                    'پیشنهاد',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'شگفت',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'انگیز',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ])),
    );
  }
}
