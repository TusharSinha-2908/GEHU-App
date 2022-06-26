import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Placement_Screen extends StatefulWidget {
  static const String id = 'Placement Screen';
  const Placement_Screen({Key? key}) : super(key: key);

  @override
  State<Placement_Screen> createState() => _Placement_ScreenState();
}

class _Placement_ScreenState extends State<Placement_Screen> {

  final YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: 'chaHi1NYpFM',
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
                Image.asset('Images/Aerial_View.jpg'),
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
                                  'Placements',
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
                          Image.asset('Images/placement-stats-graphic-era.jpg'),
                          const Divider(thickness: 0.5),
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                              autoPlayInterval: const Duration(seconds: 5),
                              height: 140,
                            ),
                            items: [
                              Image.asset('Images/Placements/gehu-placement-1-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-2-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-3-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-4-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-5-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-6-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-7-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-8-2021.jpg'),
                              Image.asset('Images/Placements/gehu-placement-9-2021.jpg'),
                            ],
                          ),
                          const Divider(thickness: 0.5),
                          Image.asset('Images/Placements/placement-mba-graphic-era.jpg'),
                          const SizedBox(height: 10),
                          const Divider(thickness: 0.5),
                          const Text(
                            'Going Beyond Placements - Creating Job Creators',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Image.asset('Images/Placements/sunfox.jpg'),
                          const Padding(
                            padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),
                            child: Flexible(
                              child: Text(
                                rajat_jain + "\n\nHere's a video of the interaction.",
                                style: TextStyle(fontSize: 11),
                              ),
                            ),
                          ),
                          YoutubePlayer(
                              controller: _controller,
                              showVideoProgressIndicator: true,
                          ),
                          const SizedBox(height: 5),
                          const Divider(thickness: 1),
                          const Text(
                            'Corporate Resource Cell Team',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Image.asset('Images/Placements/Resource_Cell.jpg'),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: EdgeInsets.only(left: 5,right: 5),
                            child: Flexible(
                              child: Text(
                               "Corporates may reach out to us at the email provided, for all Internship related offers/details/queries: internships@gehu.ac.in",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          const Divider(thickness: 1),
                          const Text(
                            'Some Of Our Top Recruiters',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Image.asset('Images/Placements/adobe.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/amazon.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/TATA.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/IBM.jpg'),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset('Images/Placements/wipro.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/hsbc.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Sapient.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/ZeeNews.jpg'),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset('Images/Placements/Wrig.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/YAMAHA.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Webkul.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Deloitte.jpg'),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset('Images/Placements/accenture.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/samsung.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/SBI-LIFE.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Schneider.jpg'),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset('Images/Placements/Shriram-Capital.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Supertech.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/td-newton.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Tech-Mahindra.jpg'),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Image.asset('Images/Placements/Tommy-Hilfiger.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/Vijaya.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/capgemini.jpg'),
                              ),
                              const SizedBox(width: 5),
                              Expanded(
                                child: Image.asset('Images/Placements/sap.jpg'),
                              ),
                              const SizedBox(width: 5),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            // Container(
            //   color: red_Color,
            //   child: const Padding(
            //     padding: EdgeInsets.only(top: 10, bottom: 10),
            //     child: Text(
            //       'Graphic Era Hill University © 2022',
            //       textAlign: TextAlign.center,
            //       style: TextStyle(
            //         color: Colors.white,
            //         fontSize: 10,
            //         fontWeight: FontWeight.w600,
            //       ),
            //     ),
            //   ),
            // ),
            Container(
              color: red_Color,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: ()=> launchURL('https://www.facebook.com/gehu.official/'),
                            child: Image.asset(
                              'Images/facebook.png',
                              color: Colors.white,
                              scale: 25,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: ()=> launchURL('https://twitter.com/graphicerahill1'),
                            child: Image.asset(
                              'Images/twitter.png',
                              color: Colors.white,
                              scale: 25,
                            ),
                          ),
                          const SizedBox(width: 10),
                          GestureDetector(
                            onTap: ()=> launchURL('https://www.linkedin.com/company/graphic-era-hilluniversity'),
                            child: Image.asset(
                              'Images/linkedin.png',
                              color: Colors.white,
                              scale: 25,
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: ()=> launchURL('https://www.youtube.com/GEHUDehradun'),
                            child: Image.asset(
                              'Images/youtube.png',
                              color: Colors.white,
                              scale: 25,
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: ()=> launchURL('https://www.instagram.com/graphicerahilluniversity/'),
                            child: Image.asset(
                              'Images/instagram.png',
                              color: Colors.white,
                              scale: 25,
                            ),
                          ),
                          const SizedBox(width: 15),
                          GestureDetector(
                            onTap: ()=> launchURL('https://api.whatsapp.com/send?phone=+917617770113'),
                            child: Image.asset(
                              'Images/whatsapp.png',
                              color: Colors.white,
                              scale: 25,
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(5.0),
                    child: Text(
                      'Graphic Era Hill University © 2022',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
