import 'package:flutter/material.dart';

class CustomStatsCard extends StatelessWidget {
  final Color backgroundColor;
  final IconData iconData;
  final Color iconBackgroundColor;
  final String title;
  final String subtitle;
  final Color deepColor;

  const CustomStatsCard({
    required this.backgroundColor,
    required this.iconData,
    required this.iconBackgroundColor,
    required this.title,
    required this.subtitle,
    required this.deepColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 140,
      width: 140,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: iconBackgroundColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: deepColor,
            ),
          ),
        ],
      ),
    );
  }
}