import 'package:GEHU/About_Screen.dart';
import 'package:GEHU/Academics_Screen.dart';
import 'package:GEHU/Admission_Screen.dart';
import 'package:GEHU/Home_Screen.dart';
import 'package:GEHU/International_Screen.dart';
import 'package:GEHU/Placement_Screen.dart';
import 'package:GEHU/Student_Area_Screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home_Screen(),
      initialRoute: Home_Screen.id,
      routes: {
        Home_Screen.id : (context) => const Home_Screen(),
        About_Screen.id : (context) => const About_Screen(),
        Admission_Screen.id: (context) => const Admission_Screen(),
        Academics_Screen.id: (context) => const Academics_Screen(),
        Placement_Screen.id: (context) => const Placement_Screen(),
        Student_Area_Screen.id: (context) => const Student_Area_Screen(),
        International_Screen.id: (context) => const International_Screen(),
      },
    );
  }
}

