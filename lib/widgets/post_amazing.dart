import 'package:digikala/product/screen_prodact.dart';
import 'package:flutter/material.dart';
import 'package:persian_number_utility/persian_number_utility.dart';

// ignore: must_be_immutable
class main_getpost extends StatelessWidget {
  String imagee;
  double Pricee;
  String namee;
  double takfife;
  double star;
  int size1;
  int size2;
  int size3;
  int size4;
  int size5;
  String coin;
  String informathion_seller;
  String amlkard;
  String color1;
  String color2;
  String color3;
  String color4;
  String color5;
  main_getpost({
    Key? key,
    this.informathion_seller = '',
    this.amlkard = '',
    this.Pricee = 0,
    this.imagee = 'no',
    this.namee = '',
    this.takfife = 0,
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
    this.coin = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return Scrren_Product(
              ima: imagee,
              Price: Pricee,
              takfif: takfife,
              nam: namee,
              star: star,
              size1: size1,
              size2: size2,
              size3: size3,
              size4: size4,
              size5: size5,
              color1: color1,
              color2: color2,
              color3: color3,
              color4: color4,
              color5: color5,
              informathion_seller: informathion_seller,
              amalkard: amlkard,
              coin: coin,
            );
          }));
        },
        child: getpost(
          image: imagee,
          Price: Pricee,
          name: namee,
          takfif: takfife,
        ));
  }
}

Widget getpost({
  required var image,
  required double Price,
  required var name,
  required double takfif,
}) {
  var a = takfifee(takfif, Price);
  return Card(
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
              '??????????',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'vazir'),
            ),
            SizedBox(width: 2),
            Text(
              '${a.toStringAsFixed(0).seRagham()}',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                  fontFamily: 'vazir'),
            ),
            SizedBox(width: 30),
            if (takfif != 0)
              Container(
                alignment: Alignment.center,
                width: 40,
                height: 22,
                child: Text(
                  '${takfif.toInt()}%',
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
            if (takfif != 0)
              Text(
                '${Price.toStringAsFixed(0).seRagham()}',
                style: TextStyle(fontSize: 15),
              ),
            SizedBox(width: 30),
          ],
        )
      ],
    ),
  );
}

double takfifee(double takfife, double Pricee) {
  if (takfife != 0) {
    return Pricee - (takfife * Pricee / 100);
  } else {
    return Pricee;
  }
}
