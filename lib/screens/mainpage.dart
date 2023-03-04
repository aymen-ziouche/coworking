import 'package:flutter/material.dart';
import 'package:mactabbi/screens/spacepage.dart';
import 'package:mactabbi/screens/typepage.dart';
import 'package:mactabbi/widgets/header_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/membership_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/space_type_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/top_space_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeaderWidget(
                  imageUrl:
                      "https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg",
                  name: "Aymen",
                  points: 20,
                  qr: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Top Spaces:",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 200,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    controller: PageController(
                      initialPage: 6 ~/ 2,
                      viewportFraction: 0.8,
                    ),
                    clipBehavior: Clip.none,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpacePage()));
                        },
                        child: const TopSpaceWidget(
                          spaceImageUrl:
                              "https://casacor.abril.com.br/wp-content/uploads/sites/7/2021/08/selina-coworkings-em-sao-paulo.jpg?quality=80&strip=info&w=1024",
                          spacedistance: "5 KM",
                          spacename: "Inspire Co-Working",
                        ),
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Colors.grey,
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1.4,
                      crossAxisSpacing: 5,
                      mainAxisSpacing: 5,
                      crossAxisCount: 2,
                    ),
                    shrinkWrap: true,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TypePage()));
                        },
                        child: const SpaceTypeWidget(
                          spaceType: "SpaceType",
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                const MembershipWidget(
                  membershipvalue: 0.4,
                  dateRemaning: "15 Days",
                ),
                const SizedBox(
                  height: 15,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
