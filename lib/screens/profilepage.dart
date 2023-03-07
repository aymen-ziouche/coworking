import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.red,
                  radius: 50,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Aymen Ziouche",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const OptionWidget(
              icon: Icon(Icons.account_circle_outlined),
              option: "Profile settings",
            ),
            const OptionWidget(
              icon: Icon(Icons.credit_card),
              option: "Membership",
            ),
            const OptionWidget(
              icon: Icon(Icons.timer_outlined),
              option: "History",
            ),
            const OptionWidget(
              icon: Icon(Icons.monetization_on_outlined),
              option: "Payments",
            ),
          ],
        ),
      ),
    ));
  }
}

class OptionWidget extends StatelessWidget {
  final String option;
  final Icon icon;
  const OptionWidget({super.key, required this.icon, required this.option});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                blurRadius: 7,
                color: Colors.black12,
                spreadRadius: 2,
                offset: Offset(0.0, 3))
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              option,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios)
          ],
        ),
      ),
    );
  }
}
