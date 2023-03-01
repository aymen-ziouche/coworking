import 'package:flutter/material.dart';

class SpaceTypeWidget extends StatelessWidget {
  final String spaceType;
  const SpaceTypeWidget({super.key, required this.spaceType});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(50),
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(10),
        ),
        color: Theme.of(context).primaryColor,
        gradient: LinearGradient(
            colors: [Colors.red, Colors.red.shade800],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Center(
        child: Text(
          spaceType,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}
