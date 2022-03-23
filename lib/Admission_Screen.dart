import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';

class Admission_Screen extends StatelessWidget {
  static const String id = 'Admission Screen';
  const Admission_Screen({Key? key}) : super(key: key);

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
                Image.asset('Images/admissions.jpg'),
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
                                  'Admission',
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
                          Image.asset('Images/hostel.jpg'),
                          const SizedBox(height: 5),
                          const Text(
                            'World Class Facilities',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Flexible(
                              child: Text(
                                facilities,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          Image.asset('Images/success-story.jpg'),
                          const SizedBox(height: 5),
                          const Text(
                            'Success Stories',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5, top: 5),
                            child: Flexible(
                              child: Text(
                                success_stories,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          Image.asset('Images/campus-life.jpg'),
                          const SizedBox(height: 5),
                          const Text(
                            'Campus Life',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10, top: 5),
                            child: Flexible(
                              child: Text(
                              campus_life,
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 10),
                            child: Container(
                              color: Color(0xFF373737),
                              padding: EdgeInsets.all(5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 100,
                                    width: 100,
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('Images/scholarship.jpg'),
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
                                          'Scholarship',
                                          style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text(
                                          scholarship,
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
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
