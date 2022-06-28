import 'package:GEHU/QR_Code.dart';
import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';

import 'Bottom_Bar.dart';
import 'Firebase Storage/Image_Constants.dart';

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
                // Image.asset('Images/admissions.jpg'),
                const Get_Image(root: "", path: "admissions.jpg"),
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
                          // Image.asset('Images/hostel.jpg'),
                          const Get_Image(root: "", path: "hostel.jpg"),
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
                            child: Text(
                              facilities,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          //Image.asset('Images/success-story.jpg'),
                          const Get_Image(root: "", path: "success-story.jpg"),
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
                            child: Text(
                              success_stories,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          //Image.asset('Images/campus-life.jpg'),
                          const Get_Image(root: "", path: "campus-life.jpg"),
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
                            child: Text(
                            campus_life,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5, right: 5, bottom: 15),
                            child: Container(
                              color: const Color(0xFF373737),
                              padding: const EdgeInsets.all(5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                    child: Container(
                                      height: 100,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('Images/scholarship.jpg'),
                                          scale: 0.1,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Flexible(
                                    flex: 1,
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
                          const Text(
                            'Fast Track Online Fee Payment Options',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Button(text: 'GEHU Dehradun\n (Paytm)', onPress: () => launchURL('http://m.p-y.tm/GraphicEraHill_DDN_web')),
                                const SizedBox(width: 10),
                                Button(text: 'GEHU Bhimtal   \n (Paytm)', onPress: () => launchURL('http://m.p-y.tm/GraphicEraHill_web')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Button(text: 'HDFC Payment \n Gateway', onPress: ()=> launchURL('https://forms.eduqfix.com/geuonlineform/add')),
                                const SizedBox(width: 10),
                                Button(text: 'Pay Using QR    ', onPress: ()=> Navigator.pushNamed(context, QR_Code.id) ),
                              ],
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 10, left: 5, right: 5),
                            child: Text(
                              admission_fee_note,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            const Bottom_Bar(),
          ],
        ),
      ),
    );
  }
}
