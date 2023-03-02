import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MembershipWidget extends StatelessWidget {
  final double membershipvalue;
  final String dateRemaning;
  const MembershipWidget(
      {super.key, required this.membershipvalue, required this.dateRemaning});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 0.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0.1, 0.1), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "membership",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          LinearPercentIndicator(
            backgroundColor: Colors.grey.withOpacity(0.1),
            center: Text(
              dateRemaning,
              style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            lineHeight: 40,
            percent: membershipvalue,
            barRadius: const Radius.circular(10),
          ),
          const Padding(
            padding: EdgeInsets.all(15.0),
            child: Text(
              "Get your membership extended",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
