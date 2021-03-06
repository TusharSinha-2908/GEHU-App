import 'dart:io';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

const String college_Info = 'The Graphic Era Educational Society, established in 1993, is a non-profit organization that aims to mobilize world class education and generate resources for providing and supporting quality education for all. The society recognizes the right of every individual to lead a life of dignity and self-respect in a just and equitable manner. At the initial phase Graphic Era Society established in 1997 Graphic Era Institute of Technology. Graphic Era Institute of Technology had the distinction of being first Self- financed educational institute in North India, offer engineering courses The Institute was the culmination of the dream of its visionary founder Prof. (Dr) Kamal Ghanshala to change the destiny of thousands of youth by providing an excellent and holistic professional education. He had visualized an educational hub that would cater to academic aspirations of innumerable young man and women and his vision took a concrete shape in the form of Graphic Era Institute.';
const String prof_Ghansala = 'The Founder of the Graphic Era Group and the President of Graphic Era (Deemed to be University) ; He is an engineer with Bachelor\'s and Master\'s degree in Computer Science and Engineering. He also holds a Ph.D. in Computer Science and Engineering. He has a rich teaching experience, and is, inarguably, one of the leading experts in the teaching of Computer Aided Design (CAD) and āCā language in the country.';
const String prof_JKumar = 'Prof. (Dr.) J. Kumar, was educated at G.B.Pant University of Agriculture & Technology (GBPUA&T), Pantnagar, 1975-1983; M.Sc.1977, Ph.D. 1983; and was Post-doctoral Fellow, International Rice Research Institute, Philippines, 1993-1996. He was Visiting Scientist at IRRI, Philippines, in 1997, 1998, 2001, 2002, Cornell University, USA, in 1999 and 2000 and INRA, France, 2004.';
const String college_About = "Established vide Act No 12 of 2011 of Uttarakhand State Legislature.\n\nUniversity under Section 2(f) of the UGC Act, 1956 set up under the aegis of Graphic Era Educational Society, Dehradun. Founded in 2011 Graphic Era Hill University is today widely known for its innovative and rigorous education which has nurtured professionals across industries and sectors in India and beyond. Graphic Era Hill University has adopted a global approach to education and research with focus on International perspectives and expertise. University has abiding commitment to excellence and pursues this relentlessly settling for nothing, but the best. Its faculty is the bedrock of the University and composed of academic luminaries across India and abroad. GEHU is on the cutting edge of using state-of-the art equipment and preparing students for globalized economy and at the same time promoting holistic learning, unbiased knowledge ,industry centric skills, ethics, a cosmopolitan outlook and accountability for actions. GEHU is making its presence at national and international platforms, through collaborations with premier universities of the world, study abroad programs and international internships and research.\n\nGraphic Era Hill University offers comprehensive curriculum over a large number of degree programs in engineering, law, management, computer applications, humanities, applied sciences, animation, fashion designing, journalism and mass communication, Agriculture. These programs offer the students multiple academic pathways. The University has an abiding commitment to create excellent education opportunities for the youth hailing from the hills, at affordable cost. Therefore 25% concession in the fee is offered to the students of hill areas, across the country. University also offers unstinting support for community services, through its social responsibility endeavors.";
const String college_Campus = "Our campuses have been designed as self-contained enclaves with infinite academic, research, sports and training facilities and world class student   comforts. These campuses attract, nurture and transform innumerable students every year. With quality teaching and research work underway, the GEHU is earning a reputation as an important and much sought after  centre of learning and research, contributing in knowledge creation and innovation in our region and internationally.";
const String college_Dehradun = "Graphic Era Hill University Dehradun campus is located in the cantonment area, along the Rajaji National Park against the panoramic view of Shivalik Hills. The University offers perfect ambience for all academic pursuits, health growth and widening of mental horizons. GEHU ā Dehradun campus is fully equipped with state-of-the-art computer centres and labs, spacious and temperature regulated class rooms, lecture theatres and seminar halls, accommodation and medical facilities and our very own radio station. The Dehradun Campus of Graphic Era Hill University has been acclaimed and honored at various events of national and international prominence";
const String college_Bhimtal = "The GEHU - Bhimtal Campus is located at the Kumaon foothills of the outer Himalayas amidst lush green tree cover, along the Sattal Road. It has been designed as a self contained community with academic and research facilities, laboratories, libraries and administrative offices all in the same campus. Campus provides various facilities like students' accommodation, Open Air Theatre, cafeteria, play fields, library and computer centers, fully equipped and well designed lecture theatres. Bhimtal is well connected to all major cities of India, by road and rail, with the nearest railway station being Kathgodam which is 27 kms from Bhimtal Campus. By road, Bhimtal is about 300 kms from Delhi, 16 kms from Nainital and 310kms from Dehradun.";
const String college_Haldwani = "The Graphic Era Hill University campus at Haldwani, the mesmerizing gateway to Kumaon, is situated in the vibrant and largest commercial market of the state and is a wonderful fusion of the bliss of Mother Nature and the exciting bustle of an up and coming city. The campus boasts of a magnificent amphitheater, vibrant cafeterias, energetic playing fields and recreational grounds, a massive collection of books in a regal library, well-resourced, multifaceted laboratories, and computer centers, and dynamic lecture theatres. With courses in various disciplines, ranging from engineering, science, and technology, business and management studies, hospitality, and humanities, we welcome ambitious and enthusiastic students seeking a serene college experience and promise every student an educative and pedagogic experience of a lifetime.";
const String facilities = "Separate hostels are provided for girls and boys at GEHU. Students are provided with adequate facilities to make them feel at home. Their stay in the hostel enables them to imbibe a different lifestyle and involve themselves in activities including yoga, meditation, sports, music etc., suiting individuals taste and preferences.";
const String success_stories = "The beautifully designed Graphic Era has stimulating aesthetics and is perpetually in motion, with plethora of activities taking place, there is never a dull moment. We maintain an open and inclusive environment that nurtures the growth and development of the student community.";
const String campus_life = "The beautifully designed Graphic Era Hill University campus has stimulating aesthetics and is perpetually in motion, with plethora of activities taking place, there is never a dull moment.  We maintain an open and inclusive environment that nurtures the growth and development of the student community.";
const String scholarship = "Graphic Era awards merit or academic scholarships to those students who do exceptionally well in academic and educational frontiers. These are directed towards acknowledging exceptional students for their achievements in the fields of academics and educational prowess.";
const String admission_fee_note = "Note: In case of withdrawal of Admission after Full/Partial Fee Payment, the One-Time Admission charges (Inclusive of Security Amount) mentioned in the Fee Sttucture will be deducted by the University. Please note that this amount does not include Tuition Fees or Other Charges payable per semester. The One-Time Admission charges vary as per the course chosen. This quantum of deduction is valid till the commencement of the course in contention, post which the policy will be revised.";
const String fee_payment_issue = "In case of any issue, write to us at : accounts_gehu@gehu.ac.in \nor call us at : 7088413131";
const String academics_description = "Graphic Era Hill University was also established under the aegis of GEES on 28 April 2011 by an act of the Uttarakhand State. Known as one of the premiere university of India, GEHU has gained recognition for its ingenious educational practices and global approach that has succeeded in nurturing an army of professionals across industries and sectors in the nation and beyond. Initially the university was set up in Dehradun and Bhimtal. But the vision to make world class education available and accessible to youth across the state propelled the establishment of another campus in Haldwani, within a mere decade.\n\nThe university offers wide range of multi disciplinary programs ranging from engineering, applied & life sciences, management, commerce, law, hospitality to animation, fashion designing, humanities journalism and mass communication in tandem with the diverse interests and aspirations of youth. The university offers scholarships and foreign internshisps to meritorious students, organizes global exchange programs, seminars by eminent scholars and periodically signs research partnerships with other universities, government and industries to broaden the mental horizons and provide impetus to achievement of personal and professional goals of its students.\n\nThe three campuses are also abound with amenities like advanced laboratories, well stocked libraries, lecture theatres, seminar halls, computer labs, radio station, wifi, cafeteria, hostel etc. that seek to enrich and smoothen the learning process of the student community. In accordance with the abiding commitment of university to create conducive and excellent educational opportunities for youth hailing from hilly areas, a concession of 25% in fee is offered to them. The university also lends its uncompromising support for community services, through its social responsibility endeavors. The state-of-the-art infrastructure, students facilities, industry centric curriculum, highly competent faculty members, research focused approach and high placement each year has made GEHU a safe haven for students who aspire to  carve their own identity in the professional world. The university has been acclaimed and honored at various events and occasions of national and international prominence which testifies to the brilliance of the education imparted in the institution.";
const String rajat_jain = "Sunfox Founder - Rajat Jain, Student of M.Tech at Graphic Era, interacted with Hon'ble Prime Minister of India, Shri. Narendra Modi, receiving appreciation for developing the smallest ECG Machine in the world.";
const String international_description = "Graphic Era Hill University has signed MoU with reputed International Universities that helps to prepare young students for life and active participation in a global multicultural society,by developing knowledge and understanding the historical, geographic, cultural and relationships among world regions. The perspective is imperative to develop the skills, knowledge, and attitudes needed for responsible participation in a democratic society and in a global community in the twenty-first century.";
const String international_internship = "To promote the true spirit of globalizations, Graphic Era Hill University invited applications for a Marketing Internship of duration 6 weeks on campus to the world which saw a lot of applications for the same.\n\nAs part of the internships, interns were given dedicated responsibilities ranging from Social Media Marketing to creation of a University app under the guidance of the School of Computing and International Affairs Team.\n\nA look at the interns of Graphic Era with their experience";
const String research_collab_1 = "Commonwealth of Learning (COL) has granted 32,250 Canadian Dollars to faculty resources of Graphic Era Hill University, Dehradun Campus";
const String research_collab_2 = " namely, Mr. P A Anand- Head Department of Personality Development; Mr. Ishteyaaq Ahmed- Head: School of Computer Applications and Dr. Kamal Kant Joshi- Head:Department of Environmental Studies; for the purpose of development of 4 courses which will be made available to citizens of all nations associated with Commonwealth of Learning. \n\n";

const Color red_Color = Color(0xFFF70000);

void launchURL(var url) async{
  if(await canLaunch(url.toString()) == true)
  {
    await launch(url, universalLinksOnly: true);
  }
  else {
    print('There was an error!');
  }
}


Future<bool>saveImage(String url) async
{
    try {
      var imageId = await ImageDownloader.downloadImage(url);
      if(imageId == null){
        print("Error During Download");
        return false;
      }

      else{
        print("Saved Successfully!");
        return true;
      }
    }
    on PlatformException catch (error) {
      print(error);
    }

    return false;
}


Future<void> downloadFile(String url) async
{
  final String name = url.split('/').last;
  // final appStorage = await getApplicationDocumentsDirectory();
  final file = File('/storage/emulated/0/Download/$name');

  final response = await Dio().get(
      url,
      options: Options(
        responseType: ResponseType.bytes,
        followRedirects: false,
        receiveTimeout: 0,
      ),
  );

  final raf = file.openSync(mode: FileMode.write);
  raf.writeFromSync(response.data);
  await raf.close();

  if(file != null){
    print( "PDF Saved Succesfully! Path : " + file.path);

    Fluttertoast.showToast(
      msg: 'PDF Downloaded Succesfully',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );

  }

  else{

    print("Error While Saving PDF");

    Fluttertoast.showToast(
      msg: 'There Was An Error!\nCheck Your Network Connection.',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black54,
      textColor: Colors.white,
    );

  }
}


class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const Button({Key? key, required this.text, required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      onPressed: onPress,
      height: MediaQuery.of(context).size.height * 0.08,
      color: const Color(0xFFF70000),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 10.8,
        ),
      ),
    );
  }
}

class PDF_Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  const PDF_Button({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.only(top: 5),
      onPressed: onPress,
      child: Row(
        children: [
          const SizedBox(width: 10),
          Image.asset(
            'Images/pdf.jpg',
            height: 35,
            width: 35,
          ),
          const SizedBox(width: 10),
          Text(
            text,
            style: const TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 11
            ),
          ),
        ],
      ),
    );
  }
}


