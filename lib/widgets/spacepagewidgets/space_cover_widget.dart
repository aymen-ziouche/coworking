import 'package:flutter/material.dart';

class SpaceCoverWidget extends StatelessWidget {
  final String spaceImageUrl;
  final String spacename;
  final String spaceType;

  const SpaceCoverWidget(
      {super.key,
      required this.spaceImageUrl,
      required this.spacename,
      required this.spaceType});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          height: 260,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                spaceImageUrl,
              ),
            ),
          ),
        ),
        Container(
          height: 120,
          width: 220,
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(50)),
              color: Colors.red.withOpacity(0.6)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  spacename,
                  style: const TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  spaceType,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
