import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:horlicks_project/widgets/custom_days_card.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'leaderboard_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdce6ff),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: const BoxDecoration(
                        color: Color(0xff7aacfd),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(60),
                          bottomRight: Radius.circular(60),
                        )),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.18,
                    left: 50,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 150,
                      width: MediaQuery.of(context).size.width - 100,
                      decoration: const BoxDecoration(
                        color: Color(0xfff55d76),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            MdiIcons.brain,
                            color: Colors.white,
                            size: 100,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 20),
                                const Text(
                                  "Practice quiz",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  "20 questions",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                Expanded(child: Container()),
                                Row(
                                  children: [
                                    const Spacer(),
                                    Icon(
                                      MdiIcons.arrowRightCircle,
                                      color: Colors.white,
                                      size: 50,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    " Total Progess",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: double.infinity,
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const SizedBox(
                          width: 15,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: const Color(0xff7aacfd),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Icon(
                            Icons.edit_note_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Average score",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Goal 80%",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff615e5e)),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 35,
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: CircularProgressIndicator(
                            value: 0.8,
                            // Set the value according to your progress
                            backgroundColor: Colors.grey[300],
                            valueColor:
                                const AlwaysStoppedAnimation<Color>(Color(0xff7aacfd)),
                            // Progress color
                            strokeWidth: 7, // Adjust strokeWidth as needed
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomDaysCard(
                        icon: Icons.lightbulb_outline,
                        iconColor: Colors.red,
                        iconBackgroundColor: Color(0xffffd9df),
                        firstText: 'consecutive',
                        secondText: 'days',
                        numberText: '40',
                        numberTextColor: Colors.red,
                      ),
        
                      SizedBox(
                        width: 15,
                      ),
                      CustomDaysCard(
                        icon: Icons.check_circle_outline,
                        iconColor: Color(0xff27cfb5),
                        iconBackgroundColor: Color(0xffd9fdf5),
                        firstText: 'Quiz',
                        secondText: 'completed',
                        numberText: '1500',
                        numberTextColor: Color(0xff27cfb5),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
