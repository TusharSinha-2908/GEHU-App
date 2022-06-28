import 'package:firebase_storage/firebase_storage.dart';

final FirebaseStorage storage = FirebaseStorage.instanceFor(
                                app: FirebaseStorage.instance.app,
                                bucket: "gs://gehu-67835.appspot.com");

Future <String> getImage(String root, String image) async
{
  String url = await storage.ref(root + "/" + image).getDownloadURL();
  return url;
}