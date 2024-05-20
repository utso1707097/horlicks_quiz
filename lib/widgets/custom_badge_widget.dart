import 'package:flutter/material.dart';

import '../utils/custom_clipper.dart';

class CustomBadgeWidget extends StatelessWidget {
  final String imagePath;
  final String text;
  final double pillarHeight;
  final String pillarText;
  final Color pillarColor;

  const CustomBadgeWidget({
    Key? key, // Add this line
    required this.imagePath,
    required this.text,
    required this.pillarHeight,
    required this.pillarText,
    required this.pillarColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.13,
          width: MediaQuery.of(context).size.height * 0.13,
          decoration: BoxDecoration(
            color: Colors.redAccent.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.asset(
              imagePath,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        ClipPath(
          clipper: CustomClipPath(),
          child: _buildPillar(pillarHeight, pillarText,pillarColor),
        ),
      ],
    );
  }
  Widget _buildPillar(double height, String text, Color pillarColor) {
    return Container(
      width: 100, // Adjust the width as needed
      height: height, // Adjust the height as needed
      decoration: BoxDecoration(
        color: pillarColor,
        borderRadius: BorderRadius.circular(12),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.white.withOpacity(0.5),
        //     spreadRadius: 5,
        //     blurRadius: 7,
        //     offset: Offset(0, 3), // changes the position of the shadow
        //   ),
        // ],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 80,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
