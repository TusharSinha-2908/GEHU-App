import 'package:GEHU/Constants.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class QR_Code extends StatelessWidget {
  static const String id = "QR Code";

  const QR_Code({Key? key}) : super(key: key);

  void showToast(bool status) {
    if(status) {
      Fluttertoast.showToast(
          msg: 'Image Saved To Downloads',
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black54,
          textColor: Colors.white,
      );
    } else {
      Fluttertoast.showToast(msg: 'There Was An Error!\nCheck Your Network Connectivity!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code'),
        backgroundColor: red_Color,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              child: const Icon(
                Icons.download_sharp,
                size: 27,
              ),
              onTap: () async{
                    String url = "https://firebasestorage.googleapis.com/v0/b/gehu-67835.appspot.com/o/gehu-qr-code.png?alt=media&token=325bb0bf-f5be-492c-bd29-8ecbd716ba87";
                    bool status = await saveImage(url);
                    showToast(status);
              },
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Image.asset('Images/gehu-qr-code.png'),
          Expanded(child: Container()),
          Container(
            color: red_Color,
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(7.0),
              child: Text(
                'Graphic Era Hill University © 2022',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
