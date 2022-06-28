import 'package:flutter/material.dart';
import 'package:GEHU/Constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'Bottom_Bar.dart';
import 'Firebase Storage/Image_Constants.dart';

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
                //Image.asset('Images/Aerial_View.jpg'),
                const Get_Image(root: "", path: "Aerial_View.jpg"),
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
                          //Image.asset('Images/placement-stats-graphic-era.jpg'),
                          const Get_Image(root: "", path: "placement-stats-graphic-era.jpg"),
                          const Divider(thickness: 0.5),
                          CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              autoPlayAnimationDuration: const Duration(milliseconds: 1500),
                              autoPlayInterval: const Duration(seconds: 5),
                              height: 140,
                            ),
                            items: const [
                              // Image.asset('Images/Placements/gehu-placement-1-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-2-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-3-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-4-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-5-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-6-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-7-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-8-2021.jpg'),
                              // Image.asset('Images/Placements/gehu-placement-9-2021.jpg'),

                              Get_Image(root: "Placements", path: "gehu-placement-1-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-2-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-3-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-4-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-5-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-6-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-7-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-8-2021.jpg"),
                              Get_Image(root: "Placements", path: "gehu-placement-9-2021.jpg"),

                            ],
                          ),
                          const Divider(thickness: 0.5),
                          //Image.asset('Images/Placements/placement-mba-graphic-era.jpg'),
                          const Get_Image(root: "Placements", path: "placement-mba-graphic-era.jpg"),
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
                          //Image.asset('Images/Placements/sunfox.jpg'),
                          const Get_Image(root: "Placements", path: "sunfox.jpg"),
                          const Padding(
                            padding: EdgeInsets.only(left: 5,right: 5,top: 5,bottom: 10),
                            child: Text(
                              rajat_jain + "\n\nHere's a video of the interaction.",
                              style: TextStyle(fontSize: 11),
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
                          //Image.asset('Images/Placements/Resource_Cell.jpg'),
                          const Get_Image(root: "Placements", path: "Resource_Cell.jpg"),
                          const SizedBox(height: 5),
                          const Padding(
                            padding: EdgeInsets.only(left: 5,right: 5),
                            child: Text(
                             "Corporates may reach out to us at the email provided, for all Internship related offers/details/queries: internships@gehu.ac.in",
                              style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 1.2
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
                            children: const [
                              Expanded(
                                  child: Get_Image(root: "Placements", path: "adobe.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "amazon.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "TATA.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "IBM.jpg"),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Get_Image(root: "Placements", path: "wipro.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "hsbc.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Sapient.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "ZeeNews.jpg"),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Wrig.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "YAMAHA.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Webkul.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Deloitte.jpg"),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Get_Image(root: "Placements", path: "accenture.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "samsung.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "SBI-LIFE.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Schneider.jpg"),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Shriram-Capital.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Supertech.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "td-newton.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Tech-Mahindra.jpg"),
                              ),
                              SizedBox(width: 5),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Tommy-Hilfiger.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "Vijaya.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "capgemini.jpg"),
                              ),
                              SizedBox(width: 5),
                              Expanded(
                                child: Get_Image(root: "Placements", path: "sap.jpg"),
                              ),
                              SizedBox(width: 5),
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
            const Bottom_Bar(),
          ],
        ),
      ),
    );
  }
}
