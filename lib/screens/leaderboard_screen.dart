import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../utils/custom_clipper.dart';
import '../widgets/custom_badge_widget.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> leaderboardData = [
      {"rank": "1", "name": "John", "school": "ABC School", "image": "assets/avatar.jpg"},
      {"rank": "2", "name": "Emma", "school": "XYZ School", "image": "assets/avatar.jpg"},
      {"rank": "3", "name": "Michael", "school": "PQR School", "image": "assets/avatar.jpg"},
      {"rank": "4", "name": "Sophia", "school": "ABC School", "image": "assets/avatar.jpg"},
      {"rank": "5", "name": "Ethan", "school": "XYZ School", "image": "assets/avatar.jpg"},
      {"rank": "6", "name": "Olivia", "school": "PQR School", "image": "assets/avatar.jpg"},
      // Add more data as needed
    ];

    return Scaffold(
      backgroundColor: const Color(0xffdce6ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: const BoxDecoration(
                      color: Color(0xff7aacfd),
                    ),
                  ),
                ),

                ClipPath(
                  clipper: CustomClipPath(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: const BoxDecoration(
                      color: Colors.transparent,
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.15,
                          left: 20,
                          child: CustomBadgeWidget(
                            imagePath: "assets/avatar.jpg",
                            text: "Utso",
                            pillarHeight: MediaQuery.of(context).size.height * 0.32,
                            pillarColor: Color(0xff51d3b2),
                            pillarText: "2",
                          ),
                        ),

                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.1,
                          left: MediaQuery.of(context).size.width * 0.37,
                          child: CustomBadgeWidget(
                            imagePath: "assets/avatar.jpg",
                            text: "Rahi",
                            pillarHeight: MediaQuery.of(context).size.height * 0.35,
                            pillarColor:  Color(0xffffc403),
                            pillarText: "1",
                          ),
                        ),

                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.18,
                          left: MediaQuery.of(context).size.width * 0.68,
                          child: CustomBadgeWidget(
                            imagePath: "assets/avatar.jpg",
                            text: "Mithila",
                            pillarHeight: MediaQuery.of(context).size.height * 0.28,
                            pillarColor: Color(0xfff2506b),
                            pillarText: "3",
                          ),
                        ),
                        Positioned(
                            top: MediaQuery.of(context).size.height * 0.06,
                            left: MediaQuery.of(context).size.width * 0.45,
                            child: Container(
                              width: 40,
                              height: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color(0xfffff5d4),
                              ),
                              child: Icon(
                                MdiIcons.crown,
                                color: Color(0xffffc403),
                                size: 30,
                              ),
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              padding: EdgeInsets.only(top: 10),
              itemCount: leaderboardData.length,
              itemBuilder: (context, index) {
                final data = leaderboardData[index];
                return LeaderboardListItem(
                  rank: data["rank"]!,
                  name: data["name"]!,
                  school: data["school"]!,
                  imagePath: data["image"]!,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}



class LeaderboardListItem extends StatelessWidget {
  final String rank;
  final String name;
  final String school;
  final String imagePath;

  const LeaderboardListItem({
    Key? key,
    required this.rank,
    required this.name,
    required this.school,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4), // Adjust margins as needed
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
        ),
        title: Text(
          name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(school),
        trailing: Text(rank,style: TextStyle(fontSize: 24,),),
      ),
    );
  }
}

