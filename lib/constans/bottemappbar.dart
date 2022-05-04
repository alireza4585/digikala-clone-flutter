import 'package:digikala/bottom%20app%20bar/group.dart';
import 'package:digikala/main_page.dart';
import 'package:flutter/material.dart';

import '../bottom app bar/digikala man.dart';
import '../bottom app bar/shooping_basket.dart';

class getbottom extends StatelessWidget {
  const getbottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
            child: IconButton(
              onPressed: () {
                navigat(context, digikalaman());
              },
              icon: Icon(
                Icons.person,
                size: 30,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.play_arrow,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              navigat(context, shopping_basket());
            },
            icon: Icon(
              Icons.shopping_basket,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              navigat(context, group());
            },
            icon: Icon(
              Icons.category,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              navigat(context, Main_page());
            },
            icon: Icon(
              Icons.home,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }

  void navigat(BuildContext context, Widget n) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return n;
      }),
    );
  }
}
