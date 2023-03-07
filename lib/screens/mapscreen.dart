import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Widget _child = Container(
    decoration: const BoxDecoration(
      color: Colors.transparent,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage("assets/images/Map.png"),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return _child;
  }
}
