import 'package:digikala/main_page.dart';
import 'package:flutter/material.dart';

class Comminte extends StatelessWidget {
  const Comminte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final control = TextEditingController();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'پیشنهاد می دهم',
                      style: TextStyle(color: Colors.green, fontSize: 20),
                    ),
                    SizedBox(width: 8),
                    Icon(
                      Icons.thumb_up,
                      color: Colors.green,
                      size: 20,
                    ),
                    SizedBox(width: 17),
                  ],
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Row(
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
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 17),
                  Container(
                    alignment: Alignment.topRight,
                    width: 200,
                    child: TextField(
                      controller: control,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      textAlign: TextAlign.end,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: ': نظر',
                        floatingLabelAlignment: FloatingLabelAlignment.start,
                        hintStyle: TextStyle(
                          color: Colors.grey.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 17),
                ],
              ),
              SizedBox(height: 100),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {},
                child: Text(
                  'ثبت نظر',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.green, fixedSize: Size(80, 50)),
                onPressed: () {
                  navigat_pu(context, Main_page());
                },
                child: Text(
                  'لغو',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
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
}
