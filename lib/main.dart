import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_managment_getx_practice/src/themes/my_themes.dart';
import 'package:state_managment_getx_practice/ui/pages/users_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: MyThemes().light(),
      darkTheme: MyThemes().dark(),
      home: UsersPage(),
    );
  }
}
