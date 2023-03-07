import 'package:flutter/material.dart';

class SpaceCoverWidget extends StatelessWidget {
  final String spaceImageUrl;

  const SpaceCoverWidget({
    super.key,
    required this.spaceImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 280,
      child: Image.asset(spaceImageUrl, fit: BoxFit.cover),
    );
  }
}
