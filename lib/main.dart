import 'package:GEHU/Home_Screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home_Screen(),
      initialRoute: Home_Screen.id,
      routes: {
        Home_Screen.id : (context) => Home_Screen(),
      },
    );
  }
}

