import 'package:digikala/bottom%20app%20bar/digikala%20man.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  void navigat(BuildContext context, Widget n) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (BuildContext context) {
        return n;
      }),
    );
  }

  final number = TextEditingController();
  final fullname = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, //solve problem when keyboard opening
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 150),
            Center(
              child: Text(
                'digikala',
                // textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
            ),
            SizedBox(height: 150),
            Text(
              'جهت ورود یا ثبت نام شماره ی خود را وارد کنید',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            SizedBox(height: 50),
            Container(
              alignment: Alignment.center,
              child: TextField(
                controller: number,
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'شماره',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7))),
              ),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 2),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              child: TextField(
                controller: fullname,
                textAlign: TextAlign.end,
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'نام و نام خانوادگی',
                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7))),
              ),
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey, width: 2),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                if (number.text != '' && fullname.text != '') {
                  navigat(
                      context,
                      digikalaman(
                        name: fullname.text,
                        number: number.text,
                      ));
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      'فیلد را پر کنید',
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ));
                }
              },
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'ورود/ثبت نام',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                height: 50,
                width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
