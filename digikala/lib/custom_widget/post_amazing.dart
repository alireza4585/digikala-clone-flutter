import 'package:flutter/material.dart';

Widget getpost({required var image, required var Price, required var name}) {
  return TextButton(
    onPressed: () {},
    child: Card(
      child: Column(
        children: [
          Container(
            width: 200,
            height: 220,
            padding: EdgeInsets.only(top: 10),
            alignment: Alignment.topCenter,
            child: Image(image: AssetImage('images/$image.jpg')),
          ),
          Text(
            '$name',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.grey[600],
                fontFamily: 'vazir'),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$Price',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'vazir'),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
