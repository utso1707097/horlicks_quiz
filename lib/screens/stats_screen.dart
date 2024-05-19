import 'package:flutter/material.dart';

import '../widgets/custom_days_card.dart';
import '../widgets/custom_stats_card.dart';

class StatsScreen extends StatefulWidget {
  const StatsScreen({super.key});

  @override
  State<StatsScreen> createState() => _StatsScreenState();
}

class _StatsScreenState extends State<StatsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdce6ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.57,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.35,
                    decoration: const BoxDecoration(
                      color: Color(0xff7aacfd),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(60),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.06,
                    left: MediaQuery.of(context).size.width * 0.12,
                    child: CustomStatsCard(
                      backgroundColor: Color(0xffd3fff6),
                      iconData: Icons.watch_later_outlined,
                      iconBackgroundColor: Color(0xff51d3b2),
                      title: "Total time",
                      subtitle: "27:45",
                      deepColor: Color(0xff51d3b2),
                    ),
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.18,
                    left: MediaQuery.of(context).size.width * 0.55,
                    child: CustomStatsCard(
                      backgroundColor: Color(0xffffd9df),
                      iconData: Icons.trending_up,
                      iconBackgroundColor: Color(0xfff2506b),
                      title: "Longest steak",
                      subtitle: "14",
                      deepColor: Color(0xfff2506b),
                    ),
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.26,
                    left: MediaQuery.of(context).size.width * 0.12,
                    child: CustomStatsCard(
                      backgroundColor: Color(0xfffff5d4),
                      iconData: Icons.cancel_outlined,
                      iconBackgroundColor: Color(0xffffc403),
                      title: "Wrong",
                      subtitle: "23",
                      deepColor: Color(0xffffc403),
                    ),
                  ),

                  Positioned(
                    top: MediaQuery.of(context).size.height * 0.38,
                    left: MediaQuery.of(context).size.width * 0.55,
                    child: CustomStatsCard(
                      backgroundColor: Color(0xffbfc9ff),
                      iconData: Icons.check_circle_outline,
                      iconBackgroundColor: Color(0xff5871ff),
                      title: "Correct",
                      subtitle: "14",
                      deepColor: Color(0xff5871ff),
                    ),
                  ),

                ],
              ),
            ),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                    height: 10,
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
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
