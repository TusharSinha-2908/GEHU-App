import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'Bottom_Bar.dart';
import 'Firebase Storage/Image_Constants.dart';

class International_Screen extends StatefulWidget {
  static const String id = 'International Screen';
  const International_Screen({Key? key}) : super(key: key);

  @override
  State<International_Screen> createState() => _International_ScreenState();
}

class _International_ScreenState extends State<International_Screen> {

  final YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'kNbgTQnwTnI',
    flags: const YoutubePlayerFlags(
      hideControls: false,
      controlsVisibleAtStart: true,
      autoPlay: false,
      mute: false,
    ),
  );

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
                //Image.asset('Images/international.jpg'),
                const Get_Image(root: "", path: "international.jpg"),
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
                                  'International',
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
                            child: Text(
                              international_description,
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          YoutubePlayer(
                            controller: _controller,
                            showVideoProgressIndicator: true,
                          ),
                          const SizedBox(height: 15),
                          const Text(
                            'Internships & International Students',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          const Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Text(
                              international_internship + " :",
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                              autoPlayInterval: const Duration(seconds: 5),
                              height: MediaQuery.of(context).size.height * 0.20
                            ),
                            items: const [

                              // Image.asset('Images/International/International_Interns_1.jpg'),
                              // Image.asset('Images/International/International_Interns_2.jpg'),
                              // Image.asset('Images/International/International_Interns_3.jpg'),
                              // Image.asset('Images/International/International_Interns_4.jpg'),

                              Get_Image(root: "International", path: "International_Interns_1.jpg"),
                              Get_Image(root: "International", path: "International_Interns_2.jpg"),
                              Get_Image(root: "International", path: "International_Interns_3.jpg"),
                              Get_Image(root: "International", path: "International_Interns_4.jpg"),

                            ],
                          ),
                          const Text(
                            'Research Collaborations',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const Divider(thickness: 1.5),
                          Padding(
                            padding: const EdgeInsets.only(top: 5),
                            child: RichText(
                                text: const TextSpan(
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                  ),
                                  children: [
                                    TextSpan(text: research_collab_1, style: TextStyle(fontWeight: FontWeight.w500)),
                                    TextSpan(text: research_collab_2),
                                    TextSpan(text: "You can visit their website for more information : "),
                                  ]
                                ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: GestureDetector(
                              child: const Text(
                                "https://www.col.org/",
                                style: TextStyle(color: Colors.blueAccent, fontSize: 12),
                              ),
                              onTap: () => launchURL("https://www.col.org/"),
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
