import 'package:digikala/widgets/post_amazing.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:digikala/product/screen_prodact.dart';

class Main_page extends StatelessWidget {
  const Main_page({Key? key}) : super(key: key);

  void navigat(BuildContext context, Widget n) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return n;
      }),
    );
  }

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
        children: [
          SizedBox(height: 12),
          _broshor(),
          SizedBox(height: 12),
          _icons(),
          SizedBox(height: 12),
          _amazing(),
          _icon2(),
          _amazing_supper(),
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
        child: Row(
          children: [
            SizedBox(width: 20),
            Container(
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                  SizedBox(height: 20),
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(image: AssetImage('images/purr-box.png')),
                  )
                ],
              ),
            ),
            main_getpost(
              star: 3.2,
              imagee: 'کوله',
              Pricee: 120000,
              namee: 'کوله پشتی',
              takfife: 20,
              color1: 'قرمز',
              informathion_seller: 'کیف برتر',
              amlkard: 'عالی',
              coin: '22',
            ),
            main_getpost(
              star: 4,
              imagee: 'الکل',
              Pricee: 14000,
              namee: 'الکل ضد عفونی کننده',
              takfife: 26,
            ),
            main_getpost(
              star: 5,
              imagee: 'تیشرت',
              Pricee: 155000,
              namee: 'تیشرت مردانه زیبا',
              takfife: 35,
              size1: 20,
              size2: 55,
              size3: 63,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
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
    var list = ['i1', 'i2', 'i3', 'i4', 'i5', 'i6'];
    return Wrap(
      alignment: WrapAlignment.center,
      runSpacing: 15,
      spacing: 26,
      children: [
        for (var i in list)
          Container(
            width: 60,
            height: 60,
            child: Image(
              image: AssetImage('images/$i.png'),
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

  Widget _amazing_supper() {
    return Container(
      width: double.infinity,
      height:
          400, ///////////////////////////////////////////////////////////////////
      color: Colors.green,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 20),
            Container(
              color: Colors.green,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(padding: EdgeInsets.only(top: 15)),
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
                  Text(
                    'سوپرمارکتی',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 20),
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(image: AssetImage('images/shope.png')),
                  ),
                ],
              ),
            ),
            main_getpost(
              imagee: 'بیس',
              Pricee: 48000,
              namee: 'بیسکویت ',
              takfife: 32,
            ),
            main_getpost(
              imagee: 'عسل',
              Pricee: 338000,
              namee: 'عسل',
              takfife: 56,
            ),
            main_getpost(
              imagee: 'کیک',
              Pricee: 33900,
              namee: 'کیک',
              takfife: 41,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
