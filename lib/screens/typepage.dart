import 'package:flutter/material.dart';
import 'package:mactabbi/widgets/header_widget.dart';
import 'package:mactabbi/widgets/typepageWidgets/space_widget.dart';

class TypePage extends StatelessWidget {
  const TypePage({super.key});

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
                qr: false,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "COWORKING",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index) {
                    return const SpaceWidget(
                        spaceImageUrl:
                            "https://casacor.abril.com.br/wp-content/uploads/sites/7/2021/08/selina-coworkings-em-sao-paulo.jpg?quality=80&strip=info&w=1024",
                        spacename: "Inspire Co-Working",
                        spacedistance: "5 KM");
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
