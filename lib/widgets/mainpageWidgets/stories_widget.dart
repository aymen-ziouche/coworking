import 'package:flutter/material.dart';

class StoriesWidget extends StatelessWidget {
  final bool user;
  const StoriesWidget({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return user
        ? const Padding(
            padding: EdgeInsets.only(
              left: 14.0,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.indigo,
              radius: 34,
              child: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/icons/avatar.png',
                ),
                radius: 33,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: CircleAvatar(
              backgroundColor: Colors.indigo.shade100,
              radius: 34,
              child: CircleAvatar(
                radius: 33,
                backgroundColor: Colors.grey.shade300,
              ),
            ),
          );
  }
}
