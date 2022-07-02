import "dart:io";
import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';
import 'Bottom_Bar.dart';
import 'Firebase Storage/Image_Constants.dart';


class Academics_Screen extends StatelessWidget {
  static const String id = 'Academics Screen';
  const Academics_Screen({Key? key}) : super(key: key);

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
                //Image.asset('Images/academics.jpg'),
                const Get_Image(root: "", path: "academics.jpg"),
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
                                  'Academics',
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
                            padding: EdgeInsets.only(bottom: 10),
                            child: Text(
                              academics_description,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          ExpansionTile(
                            collapsedBackgroundColor: const Color(0xFF373737),
                            backgroundColor: red_Color,
                            title: const Text(
                              'Academic Calendar',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15
                              ),
                            ),
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8, right: 8, top: 10, bottom: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      PDF_Button(
                                        text: 'Academic Calendar(Second Sem) Jan-Jun',
                                        onPress: () async{
                                          await downloadFile('https://www.gehu.ac.in/content/dam/gehu/pdf/ad-aid/Academic%20Calender%20(Second%20Semester)%20Jan-June2022.pdf');
                                        },
                                      ),
                                      const Divider(thickness: 1),
                                      PDF_Button(
                                          text: 'Academic Calendar January-June 2022',
                                          onPress: () async{
                                            await downloadFile('https://www.gehu.ac.in/content/dam/gehu/pdf/ad-aid/Academic%20Calendar%20Jan-June%202022.pdf');
                                            },
                                          ),
                                      const Divider(thickness: 1),
                                      PDF_Button(
                                          text: 'July-December (III Sem.) 2021-2022',
                                          onPress: () async{
                                            await downloadFile('https://www.gehu.ac.in/content/dam/gehu/pdf/ad-aid/Academic_Calendar_(Odd_Sem)_%20July_December_III_Semester-2021-22.pdf');
                                          },
                                      ),
                                      const Divider(thickness: 1),
                                      PDF_Button(
                                          text:  'July-December (V Sem.) 2021-2022',
                                          onPress: () async{
                                            await downloadFile('https://www.gehu.ac.in/content/dam/gehu/pdf/ad-aid/Academic_Calendar_Odd_Sem_%20July_December_Vth_VIIth_Semester-2021-22.pdf');
                                          },
                                      ),
                                    ],
                                  ),
                                ),
                                color: Colors.white,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          const Divider(thickness: 1.5),
                          const Text(
                            'Courses Offered',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 5, left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: Button(text: 'Engineering', onPress: ()=>{})),
                                const SizedBox(width: 5),
                                Expanded(child: Button(text: 'Computer Application', onPress: ()=>{})),
                                const SizedBox(width: 5),
                                Expanded(child: Button(text: 'Management', onPress: ()=>{})),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5, left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: Button(text: 'Commerce', onPress: ()=>{})),
                                const SizedBox(width: 5),
                                Expanded(child: Button(text: 'Humanities & Social Science', onPress: ()=>{})),
                                const SizedBox(width: 5),
                                Expanded(child: Button(text: 'Pharmacy', onPress: ()=>{})),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10, left: 5, right: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(child: Button(text: 'Design', onPress: ()=>{})),
                                const SizedBox(width: 5),
                                Expanded(child: Button(text: 'Law', onPress: ()=>{})),
                                const SizedBox(width: 5),
                                Expanded(child: Button(text: 'Agriculture', onPress: ()=>{})),
                              ],
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
