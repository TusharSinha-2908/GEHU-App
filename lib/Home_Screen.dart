import 'package:GEHU/About_Screen.dart';
import 'package:GEHU/Academics_Screen.dart';
import 'package:GEHU/Admission_Screen.dart';
import 'package:GEHU/Constants.dart';
import 'package:GEHU/International_Screen.dart';
import 'package:GEHU/Placement_Screen.dart';
import 'package:GEHU/Research_Screen.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Home_Screen extends StatefulWidget {
  static const String id = 'Home Screen';

  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  void launchURL(var url) async{
      if(await canLaunch(url.toString()) == true)
        {
          await launch(url, universalLinksOnly: true);
        }
      else {
        print('There was an error!');
      }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            Row(
              children: [
                Image.asset(
                  'Images/Logo.png',
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: MediaQuery.of(context).size.height * 0.10,
                  alignment: Alignment.bottomLeft,
                ),
                Image.asset(
                  'Images/Anniversary_Logo.png',
                  height: MediaQuery.of(context).size.height * 0.10,
                  width: MediaQuery.of(context).size.width * 0.25,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
            CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                    autoPlayInterval: const Duration(seconds: 5),
                    height: MediaQuery.of(context).size.height * 0.25,
                ),
                items: [
                  Image.asset('Images/bhimtal-gehu-top.jpg'),
                  Image.asset('Images/ews-courses.jpg'),
                  Image.asset('Images/btech-6-years-gehu.jpg'),
                  Image.asset('Images/MBA-GEHU.jpg'),
                  Image.asset('Images/series-online-lecture-graphic-era.jpg'),
                  Image.asset('Images/ews-courses.jpg'),
                  Image.asset('Images/Admissions-gehu.jpg'),
                ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5, bottom: 10, top: 10),
                    child: Button(text: 'About', onPress: ()=> Navigator.pushNamed(context, About_Screen.id)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 10),
                    child: Button(text: 'Admission', onPress: ()=> Navigator.pushNamed(context, Admission_Screen.id)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:const EdgeInsets.only(left: 5, right: 10, bottom: 10, top: 10),
                    child: Button(text: 'Academics', onPress: ()=> Navigator.pushNamed(context, Academics_Screen.id)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5, bottom: 10),
                    child: Button(text: 'Placement', onPress: ()=> Navigator.pushNamed(context, Placement_Screen.id)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                    child: Button(text: 'Research', onPress: ()=> Navigator.pushNamed(context, Research_Screen.id)),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:const EdgeInsets.only(left: 5, right: 10, bottom: 10),
                    child: Button(text: 'International', onPress: ()=> Navigator.pushNamed(context, International_Screen.id)),
                  ),
                ),
              ],
            ),
            Image.asset('Images/graphic-era-almuni.jpg'),
            Container(
              color: const Color(0xff373737),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, top: 10),
                    child: Row(
                      children: const [
                        Text(
                          'Celebrating ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '29 Years',
                          style: TextStyle(
                            color: red_Color,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 15, right: 10, top: 10, bottom: 10),
                      child: Text(
                        college_Info,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10, bottom: 15),
                      child: Row(
                        children: const [
                          Text(
                            'Reputed Faculty',
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Images/Prof-kamal-Ghanshala.jpg'),
                              scale: 0.01,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Prof. Kamal Ghansala',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  prof_Ghansala,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, bottom: 15, right: 15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('Images/Prof-J-Kumar.png'),
                              scale: 0.1,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Prof. (Dr.) J. Kumar',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                prof_JKumar,
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
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
              ),
          ],
        ),
      ),
    );
  }
}

