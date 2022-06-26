import 'package:GEHU/Firebase Storage/Firebase_Storage.dart';
import 'package:flutter/material.dart';

class Retireve_Image extends StatelessWidget {
  final String root;
  final String image_Path;
  final double width, height;
  final Alignment alignment;

  const Retireve_Image({required this.root, required this.image_Path, required this.height, required this.width, required this.alignment});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: getImage(root, image_Path),
      builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
        if(snapshot.connectionState == ConnectionState.done && snapshot.hasData)
        {
          // return Container(
          //   width: width,
          //   height: height,
          //   alignment: alignment,
          //   child: Image.network(snapshot.data! , fit: BoxFit.cover),
          // );

          return Image.network(
            snapshot.data.toString(),
            height: height,
            width: width,
            fit: BoxFit.contain,
          );
        }
        if(snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData)
        {
          return const CircularProgressIndicator();
        }
        return Container();
      },
    );
  }
}


