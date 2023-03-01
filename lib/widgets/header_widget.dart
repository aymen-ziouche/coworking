import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  final String imageUrl;
  final String name;
  final int points;
  final bool qr;
  const HeaderWidget(
      {super.key,
      required this.imageUrl,
      required this.name,
      required this.points,
      required this.qr});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            name,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          const Spacer(),
          Text(
            points.toString(),
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColor),
          ),
          Transform.translate(
            offset: const Offset(5, 10),
            child: const Text(
              'pts',
              textScaleFactor: 0.8,
            ),
          ),
          qr
              ? const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Icon(
                    Icons.qr_code,
                    size: 30,
                  ),
                )
              : const Text(''),
        ],
      ),
    );
  }
}
