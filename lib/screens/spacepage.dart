import 'package:flutter/material.dart';
import 'package:mactabbi/screens/checkoutpage.dart';
import 'package:mactabbi/widgets/header_widget.dart';
import 'package:mactabbi/widgets/mainpageWidgets/rating_widget.dart';
import 'package:mactabbi/widgets/spacepagewidgets/distance_widget.dart';
import 'package:mactabbi/widgets/spacepagewidgets/space_cover_widget.dart';

class SpacePage extends StatelessWidget {
  const SpacePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SpaceCoverWidget(
              spaceImageUrl: "assets/images/space6.png",
            ),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Mactabbi Co-Working",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const RatingWidget(rating: 4),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      DistanceWidget(
                        service: "",
                        icon: Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.red,
                        ),
                        value: "12 KM",
                      ),
                      Spacer(),
                      DistanceWidget(
                        service: "open hours",
                        icon: Icon(
                          Icons.timer_sharp,
                          color: Colors.red,
                        ),
                        value: "7 AM - 9 PM",
                      ),
                      Spacer(),
                      DistanceWidget(
                        service: "Distance",
                        icon: Icon(
                          Icons.pin_drop_outlined,
                          color: Colors.red,
                        ),
                        value: "12 KM",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  const Text(
                    "overview :",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse accumsan nec lectus nec varius. Aliquam ornare mattis lorem, interdum accumsan nulla. Suspendisse potenti. Quisque in rhoncus metus, varius vestibulum quam. Duis et pretium ipsum. Donec ultrices malesuada finibus. Donec iaculis felis lacinia elit commodo accumsan",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CheckoutPage()));
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)),
                      width: double.infinity,
                      height: 50,
                      child: const Center(
                        child: Text(
                          "Reserve",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
