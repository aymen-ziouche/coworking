import 'package:flutter/material.dart';
import 'package:mactabbi/screens/spacepage.dart';
import 'package:mactabbi/widgets/header_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/membership_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/space_type_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/stories_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/top_space_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/space6.png",
      "assets/images/space7.png",
      "assets/images/space6.png",
      "assets/images/space7.png",
      "assets/images/space6.png",
      "assets/images/space7.png",
      "assets/images/space6.png",
    ];

    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: HeaderWidget(
            imageUrl:
                "https://sm.ign.com/ign_nordic/cover/a/avatar-gen/avatar-generations_prsz.jpg",
            qr: true,
          ),
        ),
        body: SingleChildScrollView(
          physics: const ScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return index == 0
                        ? const StoriesWidget(user: true)
                        : const StoriesWidget(user: false);
                  },
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  "Where do You \nWant to work today?",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SpacePage()));
                      },
                      child: TopSpaceWidget(
                        spaceImageUrl: images[index],
                        fav: index == 0 ? true : false,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
