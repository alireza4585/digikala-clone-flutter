import 'package:digikala/constans/bottemappbar.dart';
import 'package:digikala/constans/get.dart';
import 'package:digikala/product/constans_def.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class digikalaman extends StatelessWidget {
  digikalaman({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'vazir'),
      home: Scaffold(
        bottomNavigationBar: getbottom(),
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              icon(),
              text1(),
              one(),
              space(),
            ],
          ),
        ),
      ),
    );
  }

  Widget icon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.notifications_none, size: 35),
        Icon(Icons.settings_sharp, size: 35),
      ],
    );
  }

  Widget text1() {
    return Column(
      children: [
        SizedBox(height: 20),
        Text(
          getinformation()[0].name!,
          style: TextStyle(fontSize: 20),
        ),
        SizedBox(height: 2),
        Text(
          getinformation()[0].number!,
          style: TextStyle(fontSize: 15, color: Colors.grey[600]),
        ),
        SizedBox(height: 40)
      ],
    );
  }

  Widget one() {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Image(
                image: AssetImage('images/i1.png'),
                width: 80,
              ),
              SizedBox(height: 15),
              Text(
                'فعال سازی کیف پول',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
          SizedBox(
            height: 190,
            child: VerticalDivider(
              thickness: 2,
              endIndent: 70,
            ),
          ),
          Column(
            children: [
              Image(
                image: AssetImage('images/i1.png'),
                width: 80,
              ),
              SizedBox(height: 15),
              Text(
                '73 امتیاز وماموریت ها',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
