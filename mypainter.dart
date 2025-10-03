import 'package:flutter/material.dart';

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var paint = Paint()..color = Colors.red;
    var paint1 = Paint()..color = const Color.fromARGB(255, 170, 90, 14);
    // var paint2 = Paint()..color = const Color.fromARGB(255, 64, 36, 168);
    Path path = Path();
    path.moveTo(width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, height * 0.3);
    path.lineTo(width * 0.11, height * 0.4);
    path.quadraticBezierTo(
      width * 0.16,
      height * 0.2,
      width * 0.5,
      height * 0.15,
    );
    path.lineTo(width, height * 0.08);

    canvas.drawPath(path, paint);
    Path path1 = Path();
    path1.moveTo(width, height * 0.76);
    path1.lineTo(width, height);
    path1.lineTo(width * 0.8, height);
    path1.quadraticBezierTo(
      width * 0.94,
      height * 0.88,
      width * 0.84,
      height * 0.73,
    );
    path1.lineTo(width, height * 0.76);
    canvas.drawPath(path1, paint1);
    // Path path2 = Path();
    // path2.moveTo(width * 0.8, 0);
    // path2.lineTo(width * 0.95, 0);
    // path2.quadraticBezierTo(width, height * 0.03, width, height);
    // path2.lineTo(width * 0.8, 0);
    // path2.quadraticBezierTo(width * 0.85, height * 0.03, width * 0.8, 0);
    // canvas.drawPath(path2, paint2);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
