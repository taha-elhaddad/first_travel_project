// @dart=2.9
import 'package:flutter/material.dart';
import 'package:first_project/screens/main_screen.dart';
import 'package:first_project/util/const.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const color = const Color.fromRGBO(252, 235, 249,20);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: Constants.appName,
      theme: (ThemeData(fontFamily: 'Amiri',scaffoldBackgroundColor: color)),
      builder: (context, child){
        return Directionality(textDirection: TextDirection.rtl, child: child);
      },
      darkTheme: Constants.darkTheme,
      home: MainScreen(),
    );
  }
}
