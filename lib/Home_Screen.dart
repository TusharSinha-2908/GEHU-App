import 'package:GEHU/Constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  static const String id = 'Home Screen';

  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
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
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.25,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
            CarouselSlider(
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 1500),
                    autoPlayInterval: Duration(seconds: 5),
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
                    padding: const EdgeInsets.only(left: 10, right: 5, bottom: 10, top: 2.5),
                    child: Button(text: 'About', onPress: ()=>{}),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10, top: 2.5),
                    child: Button(text: 'Admission', onPress: ()=>{}),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:const EdgeInsets.only(left: 5, right: 10, bottom: 10, top: 2.5),
                    child: Button(text: 'Academics', onPress: ()=>{}),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 5, bottom: 5),
                    child: Button(text: 'Placement', onPress: ()=>{}),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, bottom: 5),
                    child: Button(text: 'Research', onPress: ()=>{}),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding:const EdgeInsets.only(left: 5, right: 10, bottom: 5),
                    child: Button(text: 'International', onPress: ()=>{}),
                  ),
                ),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
