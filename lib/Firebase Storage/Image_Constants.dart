import 'package:flutter/material.dart';

import 'Retrieve_Image.dart';

class Carousel_Image extends StatelessWidget {
  final String root;
  final String path;

  const Carousel_Image({required this.root, required this.path});

  @override
  Widget build(BuildContext context) {
    return Retireve_Image(
      root: root,
      image_Path: path,
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.90,
      alignment: Alignment.center,
    );
  }
}
