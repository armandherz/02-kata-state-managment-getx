import 'package:flutter/material.dart';

class MyThemes {
  ThemeData dark() => ThemeData(
        appBarTheme: AppBarTheme(color: Color(0xff212121)),
        cardColor: Color(0xff424242),
        backgroundColor: Color(0xff121212),
        textTheme: TextTheme(headline6: TextStyle(color: Colors.white)),
      );
  ThemeData light() => ThemeData(
        backgroundColor: Color(0xffeaeaea),
        textTheme: TextTheme(headline6: TextStyle(color: Colors.black)),
      );
}
