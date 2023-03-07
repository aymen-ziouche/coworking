import 'package:flutter/material.dart';

class ServicesWidget extends StatelessWidget {
  final Icon icon;
  final String serviceName;
  const ServicesWidget(
      {super.key, required this.icon, required this.serviceName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20).copyWith(
        bottom: 3,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 3,
                spreadRadius: 2,
                offset: Offset(3, 5)),
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              icon,
              const SizedBox(
                width: 10,
              ),
              Text(serviceName),
            ],
          ),
        ),
      ),
    );
  }
}
