import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HeaderWidget extends StatelessWidget {
  final String imageUrl;
  final bool qr;
  const HeaderWidget({super.key, required this.imageUrl, required this.qr});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 130,
            child: Image.asset(
              'assets/icons/mactabbi.png',
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(tapped: () {}, icon: FontAwesomeIcons.bell),
              IconButton(tapped: () {}, icon: FontAwesomeIcons.qrcode)
            ],
          )),
        ],
      ),
    );
  }
}

Widget IconButton({required Function tapped, required IconData icon}) {
  return Padding(
      padding: EdgeInsets.all(3),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black45,
        ),
        padding: EdgeInsets.all(7),
        child: GestureDetector(
          onTap: () => tapped,
          child: Icon(icon),
        ),
      ));
}
