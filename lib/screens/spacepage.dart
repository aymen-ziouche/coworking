import 'package:flutter/material.dart';
import 'package:mactabbi/widgets/header_widget.dart';
import 'package:mactabbi/widgets/spacepagewidgets/date_selector_widget.dart';
import 'package:mactabbi/widgets/spacepagewidgets/space_cover_widget.dart';

class SpacePage extends StatelessWidget {
  const SpacePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
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
          const SpaceCoverWidget(
            spaceImageUrl:
                "https://casacor.abril.com.br/wp-content/uploads/sites/7/2021/08/selina-coworkings-em-sao-paulo.jpg?quality=80&strip=info&w=1024",
            spacename: "Inspire Co-Working",
            spaceType: "Space Type",
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                "Space distance:",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                "5 KM",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              SizedBox(
                width: 30,
              ),
              DateSelectorWidget(),
            ],
          ),
        ],
      ),
    ));
  }
}
