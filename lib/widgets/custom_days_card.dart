import 'package:flutter/material.dart';

class CustomDaysCard extends StatelessWidget {
  final Color iconColor;
  final Color iconBackgroundColor;
  final IconData icon;
  final String firstText;
  final String secondText;
  final String numberText;
  final Color numberTextColor;

  const CustomDaysCard({
    required this.iconColor,
    required this.iconBackgroundColor,
    required this.icon,
    required this.firstText,
    required this.secondText,
    required this.numberText,
    required this.numberTextColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      padding: const EdgeInsets.all(8),
      width: MediaQuery.of(context).size.width * 0.45,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Icon(
                    icon,
                    color: iconColor,
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    firstText,
                    style: const TextStyle(fontSize: 18),
                  ),
                  Text(
                    secondText,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              )
            ],
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                numberText,
                style: TextStyle(
                  color: numberTextColor,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              const Icon(Icons.arrow_circle_right, size: 40),
            ],
          )
        ],
      ),
    );
  }
}
