import 'package:flutter/material.dart';

class MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var height = size.height;
    var width = size.width;
    var paint = Paint()..color = Colors.red;
    Path path = Path();
    path.moveTo(width * 0.8, 0);
    path.lineTo(width * 0.97, 0);
    path.quadraticBezierTo(width, height * 0.03, width * 0.97, height * 0.06);
    path.quadraticBezierTo(width * 0.85, height * 0.03, width * 0.8, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
