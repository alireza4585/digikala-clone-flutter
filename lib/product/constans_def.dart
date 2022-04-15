import 'package:flutter/material.dart';

Widget space() {
  return Container(
    width: double.infinity,
    height: 10,
    color: Colors.grey[300],
  );
}

Color amalkad_color = Colors.black;
Color am_c(String n) {
  if (n == 'عالی') {
    return amalkad_color = Colors.green;
  } else if (n == 'متوسط') {
    return amalkad_color = Colors.yellow;
  } else {
    return amalkad_color = Colors.red;
  }
}
