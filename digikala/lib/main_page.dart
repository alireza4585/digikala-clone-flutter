import 'package:digikala/custom_widget/post_amazing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Main_page extends StatelessWidget {
  const Main_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _getappbar(),
      body: SafeArea(child: _getcolum()),
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
    return Container(
      width: double.infinity,
      height:
          400, ///////////////////////////////////////////////////////////////////
      color: Colors.red,
      child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            getpost(image: 'کوله', Price: 125, name: 'کوله پشتی '),
            getpost(image: 'کوله', Price: 125, name: 'کوله پشتی '),
            getpost(image: 'کوله', Price: 125000, name: 'کوله پشتی '),
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
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
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
