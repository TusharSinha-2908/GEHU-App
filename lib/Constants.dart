import 'package:flutter/material.dart';

const String college_Info = 'The Graphic Era Educational Society, established in 1993, is a non-profit organization that aims to mobilize world class education and generate resources for providing and supporting quality education for all. The society recognizes the right of every individual to lead a life of dignity and self-respect in a just and equitable manner. At the initial phase Graphic Era Society established in 1997 Graphic Era Institute of Technology. Graphic Era Institute of Technology had the distinction of being first Self- financed educational institute in North India, offer engineering courses The Institute was the culmination of the dream of its visionary founder Prof. (Dr) Kamal Ghanshala to change the destiny of thousands of youth by providing an excellent and holistic professional education. He had visualized an educational hub that would cater to academic aspirations of innumerable young man and women and his vision took a concrete shape in the form of Graphic Era Institute.';
const String prof_Ghansala = 'The Founder of the Graphic Era Group and the President of Graphic Era (Deemed to be University) ; He is an engineer with Bachelor\'s and Master\'s degree in Computer Science and Engineering. He also holds a Ph.D. in Computer Science and Engineering. He has a rich teaching experience, and is, inarguably, one of the leading experts in the teaching of Computer Aided Design (CAD) and ‘C’ language in the country.';
const String prof_JKumar = 'Prof. (Dr.) J. Kumar, was educated at G.B.Pant University of Agriculture & Technology (GBPUA&T), Pantnagar, 1975-1983; M.Sc.1977, Ph.D. 1983; and was Post-doctoral Fellow, International Rice Research Institute, Philippines, 1993-1996. He was Visiting Scientist at IRRI, Philippines, in 1997, 1998, 2001, 2002, Cornell University, USA, in 1999 and 2000 and INRA, France, 2004.';

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

