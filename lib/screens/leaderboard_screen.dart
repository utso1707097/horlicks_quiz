import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeaderboardScreen extends StatefulWidget {
  const LeaderboardScreen({Key? key}) : super(key: key);

  @override
  State<LeaderboardScreen> createState() => _LeaderboardScreenState();
}

class _LeaderboardScreenState extends State<LeaderboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdce6ff),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationX(3.1415),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height *0.6,
                    decoration: const BoxDecoration(
                      color: Color(0xff7aacfd),
                    ),
                    child: CustomPaint(
                      painter: CurvePainter(),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class CurvePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = Color(0xffdce6ff);
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.1); // Adjusted starting point
    path.quadraticBezierTo(
        size.width / 2, size.height * 0.3, size.width, size.height * 0.1); // Adjusted control point
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}


