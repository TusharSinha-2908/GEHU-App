import 'package:GEHU/Bottom_Bar.dart';
import 'package:GEHU/QR_Code.dart';
import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';
import 'Firebase Storage/Image_Constants.dart';

class Student_Area_Screen extends StatelessWidget {
  static const String id = 'Student Area Screen';
  const Student_Area_Screen({Key? key}) : super(key: key);

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
                //Image.asset('Images/Student_Area.png'),
                const Get_Image(root: "", path: "Student_Area.png"),
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
                                  'Student Area',
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
                          const Text(
                            ' Online Fee Payment',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5, left: 5, top: 5),
                            child: Text(
                              fee_payment_issue,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
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
                            padding: const EdgeInsets.only(top: 5, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Button(text: 'HDFC Payment \n Gateway', onPress: ()=> launchURL('https://forms.eduqfix.com/geuonlineform/add')),
                                const SizedBox(width: 10),
                                Button(text: 'Pay Using QR    ', onPress: () => Navigator.pushNamed(context, QR_Code.id)),
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
                          const Text(
                            ' Exam Portal',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 15),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Button(text: 'Mid-Semester\nResult', onPress: () => launchURL('https://student.gehu.ac.in/')),
                                const SizedBox(width: 10),
                                Button(text: 'End-Semester\nResult', onPress: () => launchURL('https://student.gehu.ac.in/')),
                              ],
                            ),
                          ),
                          const Text(
                            ' Others',
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
                                Button(text: 'NPTEL                        ', onPress: () => launchURL('https://nptel.ac.in/')),
                                const SizedBox(width: 10),
                                Button(text: 'NAD - (Digilocker)     ', onPress: () => launchURL('http://nad.digilocker.gov.in/')),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 5),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Button(text: 'Student\nInformation System ', onPress: () => launchURL('http://student.gehu.ac.in/')),
                                const SizedBox(width: 10),
                                Button(text: 'Notices And Updates', onPress: () => launchURL('http://nad.digilocker.gov.in/')),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 18),
            const Bottom_Bar(),
          ],
        ),
      ),
    );
  }
}
