import 'package:flutter/material.dart';

Widget getpost({
  required var image,
  required int Price,
  required var name,
  required int takfif,
}) {
  var a = takfifee(takfif, Price);
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
          SizedBox(height: 15),
          Text(
            '$name',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: Colors.grey[600],
                fontFamily: 'vazir'),
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'تومان',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'vazir'),
              ),
              SizedBox(width: 2),
              Text(
                '${a.toStringAsFixed(0)}',
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    fontFamily: 'vazir'),
              ),
              SizedBox(width: 30),
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 22,
                child: Text(
                  '$takfif%',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                  textAlign: TextAlign.center,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.red,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '$Price',
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(width: 30),
            ],
          )
        ],
      ),
    ),
  );
}

double takfifee(takfife, Pricee) {
  return Pricee - (takfife * Pricee / 100);
}
