import 'package:flutter/cupertino.dart';

class CameraBackgroundRect extends StatelessWidget {
  final double height;
  final double width;

  const CameraBackgroundRect({super.key, this.height = 100, this.width = 100});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, (height * 1.932367149758454).toDouble()),
      painter: CameraBackgroundPainter(),
    );
  }
}

class CameraBackgroundPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path_0 = Path();
    path_0.moveTo(size.width, size.height * 0.0009375000);
    path_0.lineTo(0, size.height * 0.0009375000);
    path_0.lineTo(0, size.height * 0.9996875);
    path_0.lineTo(size.width, size.height * 0.9996875);
    path_0.lineTo(size.width, size.height * 0.0009375000);
    path_0.close();
    path_0.moveTo(size.width * 0.07729469, size.height * 0.2209375);
    path_0.cubicTo(
        size.width * 0.06662246,
        size.height * 0.2209375,
        size.width * 0.05797101,
        size.height * 0.2254150,
        size.width * 0.05797101,
        size.height * 0.2309375);
    path_0.lineTo(size.width * 0.05797101, size.height * 0.5209375);
    path_0.cubicTo(
        size.width * 0.05797101,
        size.height * 0.5264600,
        size.width * 0.06662246,
        size.height * 0.5309375,
        size.width * 0.07729469,
        size.height * 0.5309375);
    path_0.lineTo(size.width * 0.9227053, size.height * 0.5309375);
    path_0.cubicTo(
        size.width * 0.9333768,
        size.height * 0.5309375,
        size.width * 0.9420290,
        size.height * 0.5264600,
        size.width * 0.9420290,
        size.height * 0.5209375);
    path_0.lineTo(size.width * 0.9420290, size.height * 0.2309375);
    path_0.cubicTo(
        size.width * 0.9420290,
        size.height * 0.2254150,
        size.width * 0.9333768,
        size.height * 0.2209375,
        size.width * 0.9227053,
        size.height * 0.2209375);
    path_0.lineTo(size.width * 0.07729469, size.height * 0.2209375);
    path_0.close();

    Paint paint0Fill = Paint()..style = PaintingStyle.fill;
    paint0Fill.color = const Color(0xff201F1F).withOpacity(0.8);
    canvas.drawPath(path_0, paint0Fill);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
