import 'package:GEHU/Constants.dart';
import 'package:GEHU/Home_Screen.dart';
import 'package:flutter/material.dart';

class Splash_Screen extends StatefulWidget {
  static const String id = "Splash Screen";
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToHome();
  }

  void navigateToHome() async
  {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.popAndPushNamed(context, Home_Screen.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAppBar(
        child: Padding(
          padding: EdgeInsets.only(right: 15,bottom: 15),
          child: Text(
              "Made With ❤ ~ Tushar Sinha",
              textAlign: TextAlign.right,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.7
              ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
                'Images/gehu_logo.jfif',
                height: 240,
                width: 240,
            ),
            const SizedBox(height: 20),
            const Text(
                'Graphic Era Hill University',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: red_Color
                ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Dehradun | Bhimtal | Haldwani',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  color: red_Color
              ),
            ),
          ],
        ),
      ),
    );
  }
}
