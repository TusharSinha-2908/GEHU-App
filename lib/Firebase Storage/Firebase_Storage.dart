import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage storage = FirebaseStorage.instance;

Future <String> getImage(String root, String image) async
{
  String url = await storage.ref(root + "/" + image).getDownloadURL();
  return url;
}