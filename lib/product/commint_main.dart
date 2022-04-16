import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// ignore: must_be_immutable
class comment_main extends StatelessWidget {
  String comment;
  bool comment_felling;
  bool execet;
  comment_main({
    Key? key,
    this.comment = '',
    this.comment_felling = true,
    this.execet = false,
  }) : super(key: key);
  // void navigat_pu(BuildContext context, Widget n) {
  //   Navigator.of(context).push(
  //     MaterialPageRoute(builder: (BuildContext context) {
  //       return n;
  //     }),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
      child: Column(
        children: [
          SizedBox(height: 5),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'دیدگاه کاربران',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
              ),
              SizedBox(width: 17)
            ],
          ),
          SizedBox(width: 20),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  c(),
                ],
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    size: 18,
                  )),
              SizedBox(
                width: 150,
              ),
              GestureDetector(
                  onTap: () {},
                  child: Text(
                    'دیدگاه بگذارید',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  )),
              // Text()
            ],
          )
        ],
      ),
    );
  }

  void navigat_pu(BuildContext context, Widget n) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return n;
      }),
    );
  }

  Row fel(bool i) {
    if (i) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'پیشنهاد می دهم',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.thumb_down,
            color: Colors.red,
            size: 20,
          ),
          SizedBox(width: 17),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'پیشنهاد نمی دهم',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
          SizedBox(width: 8),
          Icon(
            Icons.thumb_down,
            color: Colors.red,
            size: 20,
          ),
          SizedBox(width: 17),
        ],
      );
    }
  }

  Widget c() {
    return Row(
      children: [
        Container(
          width: 200,
          height: 200,
          child: Card(
            child: Column(
              children: [
                Container(
                  width: 170,
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'comment:',
                        hintStyle: TextStyle(
                            fontSize: 20, color: Colors.grey.withOpacity(0.6))),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
