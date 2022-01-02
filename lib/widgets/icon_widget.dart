import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({Key? key}) : super(key: key);

  @override
  _IconWidgetState createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget> {
  double conWidth = 400;
  bool isClicked = false;
  double fLocation = -80;
  double tLocation = -80;
  double gLocation = -80;
  double liLocation = -80;
  double instLocation = -80;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 520,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            left: fLocation,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xff0c0494),
              ),
              child: const Icon(
                FontAwesomeIcons.facebookF,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            left: tLocation,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.blueAccent,
              ),
              child: const Icon(
                FontAwesomeIcons.twitter,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            left: gLocation,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.redAccent,
              ),
              child: const Icon(
                FontAwesomeIcons.googlePlusG,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            left: liLocation,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: const Color(0xff0e04b8),
              ),
              child: const Icon(
                FontAwesomeIcons.linkedinIn,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            left: instLocation,
            child: Container(
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
              ),
              child: const Icon(
                FontAwesomeIcons.instagram,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (isClicked) {
                setState(() {
                  conWidth = 400;
                  isClicked = false;
                  fLocation = 80;
                  tLocation = 80;
                  gLocation = 80;
                  liLocation = 80;
                  instLocation = 80;
                });
              } else {
                setState(() {
                  conWidth = 80;
                  isClicked = true;
                  fLocation = 85;
                  tLocation = 170;
                  gLocation = 255;
                  liLocation = 340;
                  instLocation = 425;
                });
              }
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: conWidth,
              height: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                gradient: const LinearGradient(
                  colors: [
                    Colors.purpleAccent,
                    Colors.purple,
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: const Icon(
                FontAwesomeIcons.shareAlt,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
