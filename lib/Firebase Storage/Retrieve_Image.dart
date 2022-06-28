import 'package:GEHU/Firebase Storage/Firebase_Storage.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Retrieve_Image extends StatelessWidget {
  final String root;
  final String image_Path;
  final double width, height;
  final Alignment alignment;

  const Retrieve_Image({required this.root, required this.image_Path, required this.height, required this.width, required this.alignment});

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

          return CachedNetworkImage(
            imageUrl: snapshot.data.toString(),
            progressIndicatorBuilder: (context, url, downloadProgress) =>
                Center(child: SizedBox(height: 30, width: 30, child: CircularProgressIndicator(value: downloadProgress.progress))),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          );
        }
        if(snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData)
        {
          return const Center(child: SizedBox(height: 30, width: 30, child: CircularProgressIndicator()));
        }
        return Center(child: Container());
      },
    );
  }
}
