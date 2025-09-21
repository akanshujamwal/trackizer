import 'package:flutter/material.dart';
import 'package:trackizer/common/color_extension.dart';

class CustomArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.width / 2),
      radius: size.width / 2,
    );
    var gradient = LinearGradient(
      colors: [TColor.secondary, TColor.secondary50, TColor.secondary0],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );
    Paint activePaint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15
      ..strokeCap = StrokeCap.round;

    Paint backgroundPaint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 15
      ..color = TColor.gray30
      ..strokeCap = StrokeCap.round;

    // canvas.drawArc(
    //   rect, degrees(135),sweepAngle, useCenter, paint )
  }

  @override
  bool shouldRepaint(CustomArcPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(CustomArcPainter oldDelegate) => false;
}
