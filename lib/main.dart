import 'package:flutter/material.dart';
import 'package:horlicks_project/main_page.dart';
import 'package:horlicks_project/screens/leaderboard_screen.dart';
import 'package:horlicks_project/screens/login_screen.dart';
import 'package:horlicks_project/screens/profile_screen.dart';
import 'package:horlicks_project/screens/stats_screen.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff7badfd)),
        useMaterial3: true,
      ),
      home: LoginScreen(),
    );
  }
}





