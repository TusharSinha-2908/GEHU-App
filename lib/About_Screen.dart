import 'package:GEHU/Constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class About_Screen extends StatelessWidget {
  static const String id = 'About Screen';
  const About_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              child: Row(
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
            ),
            Stack(
              alignment: AlignmentDirectional.topStart,
              children: [
                Image.asset('Images/bhimtal-campus.jpg'),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 105),
                  child: Container(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () => Navigator.pop(context),
                                  child: const Text(
                                    'Home > ',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                const Text(
                                  'About',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 15),
                            child: Flexible(
                                child: Text(
                                    college_About,
                                    style: TextStyle(fontSize: 12),
                                ),
                            ),
                          ),
                          const Text(
                            'Our Three Campuses',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10),
                            child: Flexible(
                              child: Text(
                                college_Campus,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          ExpansionTile(
                            collapsedBackgroundColor: Color(0xFF373737),
                            backgroundColor: red_Color,
                            title: Text(
                                'Dehradun Campus',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                                ),
                            ),
                            children: [
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
                                  child: Text(
                                      college_Dehradun,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              Image.asset('Images/dehradun_campus.jpg'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          ExpansionTile(
                            collapsedBackgroundColor: Color(0xFF373737),
                            backgroundColor: red_Color,
                            title: Text(
                              'Bhimtal Campus',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                            children: [
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10),
                                  child: Text(
                                    college_Bhimtal,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              Image.asset('Images/bhimtal_campus.jpg'),
                            ],
                          ),
                          const SizedBox(height: 10),
                          ExpansionTile(
                            collapsedBackgroundColor: const Color(0xFF373737),
                            backgroundColor: red_Color,
                            title: const Text(
                              'Haldwani Campus',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                            children: [
                              Container(
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8, top: 5, bottom: 10 ),
                                  child: Text(
                                    college_Haldwani,
                                    textAlign: TextAlign.justify,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ),
                                color: Colors.white,
                              ),
                              Image.asset('Images/haldwani_campus.jpg'),
                            ],
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              color: red_Color,
              child: const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  'Graphic Era Hill University © 2022',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


