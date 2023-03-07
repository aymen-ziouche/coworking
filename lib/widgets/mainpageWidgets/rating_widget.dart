import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  final int rating;
  const RatingWidget({
    super.key,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: 130,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: rating,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.only(right: 5),
                child: CircleAvatar(
                  maxRadius: 12,
                  backgroundColor: Colors.grey.shade200,
                  child: const Icon(
                    Icons.wifi,
                    size: 18,
                    color: Colors.black,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
