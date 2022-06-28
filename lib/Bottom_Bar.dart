import 'package:flutter/material.dart';

import 'Constants.dart';

class Bottom_Bar extends StatelessWidget {
  const Bottom_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: red_Color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: ()=> launchURL('https://www.facebook.com/gehu.official/'),
                    child: Image.asset(
                      'Images/facebook.png',
                      color: Colors.white,
                      scale: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: ()=> launchURL('https://twitter.com/graphicerahill1'),
                    child: Image.asset(
                      'Images/twitter.png',
                      color: Colors.white,
                      scale: 25,
                    ),
                  ),
                  const SizedBox(width: 10),
                  GestureDetector(
                    onTap: ()=> launchURL('https://www.linkedin.com/company/graphic-era-hilluniversity'),
                    child: Image.asset(
                      'Images/linkedin.png',
                      color: Colors.white,
                      scale: 25,
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: ()=> launchURL('https://www.youtube.com/GEHUDehradun'),
                    child: Image.asset(
                      'Images/youtube.png',
                      color: Colors.white,
                      scale: 25,
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: ()=> launchURL('https://www.instagram.com/graphicerahilluniversity/'),
                    child: Image.asset(
                      'Images/instagram.png',
                      color: Colors.white,
                      scale: 25,
                    ),
                  ),
                  const SizedBox(width: 15),
                  GestureDetector(
                    onTap: ()=> launchURL('https://api.whatsapp.com/send?phone=+917617770113'),
                    child: Image.asset(
                      'Images/whatsapp.png',
                      color: Colors.white,
                      scale: 25,
                    ),
                  ),
                ]
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Graphic Era Hill University © 2022',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
