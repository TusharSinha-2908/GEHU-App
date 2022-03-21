import 'package:flutter/material.dart';

const String college_Info = 'The Graphic Era Educational Society, established in 1993, is a non-profit organization that aims to mobilize world class education and generate resources for providing and supporting quality education for all. The society recognizes the right of every individual to lead a life of dignity and self-respect in a just and equitable manner. At the initial phase Graphic Era Society established in 1997 Graphic Era Institute of Technology. Graphic Era Institute of Technology had the distinction of being first Self- financed educational institute in North India, offer engineering courses The Institute was the culmination of the dream of its visionary founder Prof. (Dr) Kamal Ghanshala to change the destiny of thousands of youth by providing an excellent and holistic professional education. He had visualized an educational hub that would cater to academic aspirations of innumerable young man and women and his vision took a concrete shape in the form of Graphic Era Institute.';
const String prof_Ghansala = 'The Founder of the Graphic Era Group and the President of Graphic Era (Deemed to be University) ; He is an engineer with Bachelor\'s and Master\'s degree in Computer Science and Engineering. He also holds a Ph.D. in Computer Science and Engineering. He has a rich teaching experience, and is, inarguably, one of the leading experts in the teaching of Computer Aided Design (CAD) and ‘C’ language in the country.';
const String prof_JKumar = 'Prof. (Dr.) J. Kumar, was educated at G.B.Pant University of Agriculture & Technology (GBPUA&T), Pantnagar, 1975-1983; M.Sc.1977, Ph.D. 1983; and was Post-doctoral Fellow, International Rice Research Institute, Philippines, 1993-1996. He was Visiting Scientist at IRRI, Philippines, in 1997, 1998, 2001, 2002, Cornell University, USA, in 1999 and 2000 and INRA, France, 2004.';
const String college_About = "Established vide Act No 12 of 2011 of Uttarakhand State Legislature.\n\nUniversity under Section 2(f) of the UGC Act, 1956 set up under the aegis of Graphic Era Educational Society, Dehradun. Founded in 2011 Graphic Era Hill University is today widely known for its innovative and rigorous education which has nurtured professionals across industries and sectors in India and beyond. Graphic Era Hill University has adopted a global approach to education and research with focus on International perspectives and expertise. University has abiding commitment to excellence and pursues this relentlessly settling for nothing, but the best. Its faculty is the bedrock of the University and composed of academic luminaries across India and abroad. GEHU is on the cutting edge of using state-of-the art equipment and preparing students for globalized economy and at the same time promoting holistic learning, unbiased knowledge ,industry centric skills, ethics, a cosmopolitan outlook and accountability for actions. GEHU is making its presence at national and international platforms, through collaborations with premier universities of the world, study abroad programs and international internships and research.\n\nGraphic Era Hill University offers comprehensive curriculum over a large number of degree programs in engineering, law, management, computer applications, humanities, applied sciences, animation, fashion designing, journalism and mass communication, Agriculture. These programs offer the students multiple academic pathways. The University has an abiding commitment to create excellent education opportunities for the youth hailing from the hills, at affordable cost. Therefore 25% concession in the fee is offered to the students of hill areas, across the country. University also offers unstinting support for community services, through its social responsibility endeavors.";
const String college_Campus = "Our campuses have been designed as self-contained enclaves with infinite academic, research, sports and training facilities and world class student   comforts. These campuses attract, nurture and transform innumerable students every year. With quality teaching and research work underway, the GEHU is earning a reputation as an important and much sought after  centre of learning and research, contributing in knowledge creation and innovation in our region and internationally.";
const String college_Dehradun = "Graphic Era Hill University Dehradun campus is located in the cantonment area, along the Rajaji National Park against the panoramic view of Shivalik Hills. The University offers perfect ambience for all academic pursuits, health growth and widening of mental horizons. GEHU – Dehradun campus is fully equipped with state-of-the-art computer centres and labs, spacious and temperature regulated class rooms, lecture theatres and seminar halls, accommodation and medical facilities and our very own radio station. The Dehradun Campus of Graphic Era Hill University has been acclaimed and honored at various events of national and international prominence";
const String college_Bhimtal = "The GEHU - Bhimtal Campus is located at the Kumaon foothills of the outer Himalayas amidst lush green tree cover, along the Sattal Road. It has been designed as a self contained community with academic and research facilities, laboratories, libraries and administrative offices all in the same campus. Campus provides various facilities like students' accommodation, Open Air Theatre, cafeteria, play fields, library and computer centers, fully equipped and well designed lecture theatres. Bhimtal is well connected to all major cities of India, by road and rail, with the nearest railway station being Kathgodam which is 27 kms from Bhimtal Campus. By road, Bhimtal is about 300 kms from Delhi, 16 kms from Nainital and 310kms from Dehradun.";
const String college_Haldwani = "The Graphic Era Hill University campus at Haldwani, the mesmerizing gateway to Kumaon, is situated in the vibrant and largest commercial market of the state and is a wonderful fusion of the bliss of Mother Nature and the exciting bustle of an up and coming city. The campus boasts of a magnificent amphitheater, vibrant cafeterias, energetic playing fields and recreational grounds, a massive collection of books in a regal library, well-resourced, multifaceted laboratories, and computer centers, and dynamic lecture theatres. With courses in various disciplines, ranging from engineering, science, and technology, business and management studies, hospitality, and humanities, we welcome ambitious and enthusiastic students seeking a serene college experience and promise every student an educative and pedagogic experience of a lifetime.";

const Color red_Color = Color(0xFFF70000);

class Button extends StatelessWidget {
  final String text;
  final VoidCallback onPress;

  Button({required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 2,
      onPressed: onPress,
      height: MediaQuery.of(context).size.height * 0.08,
      color: Color(0xFFF70000),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 12
        ),
      ),
    );
  }
}

