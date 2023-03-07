import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mactabbi/screens/mainpage.dart';
import 'package:mactabbi/screens/mapscreen.dart';
import 'package:mactabbi/screens/profilepage.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  void _getCurrentpage(value) async {
    switch (value) {
      case 0:
        setState(() {
          _bottomNavIndex = value;
          _child = const MainPage();
        });
        break;
      case 1:
        setState(() {
          _bottomNavIndex = value;
          _child = const MainPage();
        });
        break;
      case 2:
        setState(() {
          _bottomNavIndex = value;
          _child = const MainPage();
        });
        break;
      case 3:
        setState(() {
          _bottomNavIndex = value;
          _child = const ProfilePage();
        });
        break;
    }
  }

  Widget _buildBottomSheet(
    BuildContext context,
    ScrollController scrollController,
    double bottomSheetOffset,
  ) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
      floatingActionButton: Transform.translate(
        offset: const Offset(0, -30),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Image.asset(
            "assets/icons/logo.png",
            color: Colors.white,
          ),
        ),
      ),
      body: ClipPath(clipper: MyClipper(), child: const MapPage()),
    );
  }

  Widget _child = const MainPage();

  var iconList = <IconData>[
    FontAwesomeIcons.house,
    FontAwesomeIcons.heart,
    FontAwesomeIcons.clock,
    FontAwesomeIcons.circleUser,
  ];

  var _bottomNavIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _child,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        child: const Icon(
          FontAwesomeIcons.map,
          color: Colors.white,
        ),
        onPressed: () {
          showFlexibleBottomSheet(
            bottomSheetColor: Colors.transparent,
            minHeight: 0,
            initHeight: 0.9,
            maxHeight: 1,
            context: context,
            builder: _buildBottomSheet,
            anchors: [0, 0.9, 1],
            isSafeArea: true,
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        notchMargin: 8,
        rightCornerRadius: 15,
        leftCornerRadius: 15,
        backgroundColor: Colors.white,
        shadow: const BoxShadow(
          color: Colors.grey,
          blurRadius: 2,
        ),
        activeColor: Colors.red,
        inactiveColor: Colors.black38,
        height: 60,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (value) {
          _getCurrentpage(value);
        },
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double h = size.height;
    double w = size.width;

    Path path = Path();
    path.lineTo(0, h);
    path.lineTo(w, h);
    path.lineTo(w, 0);
    path.lineTo(w / 2, 0.0);
    path.addOval(
        Rect.fromCenter(center: Offset(w / 2, 0), height: 75, width: 75));

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
