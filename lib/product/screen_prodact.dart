import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Scrren_Product extends StatelessWidget {
  const Scrren_Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
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
        ),
      ),
    );
  }
}
