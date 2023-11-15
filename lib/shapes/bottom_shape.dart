import 'package:flutter/material.dart';

class AppBarshape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 1, 2, 59)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0000000, size.height * -0.0061677);
    path_0.lineTo(size.width * 0.0000000, size.height * -0.0061677);
    path_0.lineTo(size.width, size.height * -0.0129053);
    path_0.lineTo(size.width, size.height * 0.9303531);
    path_0.quadraticBezierTo(size.width * 0.9908000, size.height * 1.0074308,
        size.width * 0.9275000, size.height * 0.9909912);
    path_0.cubicTo(
        size.width * 0.8206250,
        size.height * 0.9556190,
        size.width * 0.7675750,
        size.height * 0.8078000,
        size.width * 0.5000000,
        size.height * 0.7762000);
    path_0.cubicTo(
        size.width * 0.2314250,
        size.height * 0.8067333,
        size.width * 0.1812500,
        size.height * 0.9657253,
        size.width * 0.0750000,
        size.height * 1.0044663);
    path_0.quadraticBezierTo(size.width * 0.0076750, size.height * 1.0084414,
        size.width * 0.0000000, size.height * 0.9303531);
    path_0.lineTo(size.width * 0.0000000, size.height * -0.0061677);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 1, 2, 59)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class BottomShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 1, 2, 59)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0000000, size.height * 1.0105417);
    path_0.lineTo(size.width * -0.0000000, size.height * 1.0105417);
    path_0.lineTo(size.width, size.height * 1.0173233);
    path_0.lineTo(size.width, size.height * 0.0678983);
    path_0.quadraticBezierTo(size.width * 0.9883000, size.height * -0.0097000,
        size.width * 0.9250000, size.height * 0.0069000);
    path_0.cubicTo(
        size.width * 0.8181250,
        size.height * 0.0425000,
        size.width * 0.7675750,
        size.height * 0.2813000,
        size.width * 0.5000000,
        size.height * 0.3131000);
    path_0.cubicTo(
        size.width * 0.2314250,
        size.height * 0.2823000,
        size.width * 0.1812500,
        size.height * 0.0322948,
        size.width * 0.0750000,
        size.height * -0.0066994);
    path_0.quadraticBezierTo(size.width * 0.0076750, size.height * -0.0107006,
        size.width * 0.0000000, size.height * 0.0678983);
    path_0.lineTo(size.width * -0.0000000, size.height * 1.0105417);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 1, 2, 59)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class NewPage extends CustomPainter {
  @override
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color(0xFF18373f)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.6250000, size.height * 0.0100000);
    path_0.cubicTo(
        size.width * 0.5618750,
        size.height * 0.9000000,
        size.width * 0.4343750,
        size.height * 0.9200000,
        size.width * 0.3775000,
        size.height * 0.0100000);
    path_0.quadraticBezierTo(size.width * 0.3756250, size.height * -0.1200000,
        0, size.height * 0.0100000);
    path_0.lineTo(size.width * 0.0025000, size.height);
    path_0.lineTo(size.width * 0.9975000, size.height);
    path_0.lineTo(size.width * 0.9975000, size.height * 0.0100000);
    path_0.quadraticBezierTo(size.width * 0.6243750, size.height * -0.1400000,
        size.width * 0.6250000, size.height * 0.0100000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xFF18373f)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class Pagenew extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = const Color(0xFFffad2c)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height * 0.7350000);
    path_0.lineTo(size.width * 0.3200000, size.height);
    path_0.lineTo(size.width * 0.6825000, size.height);
    path_0.lineTo(size.width, size.height * 0.7375000);
    path_0.lineTo(size.width * 1.0050000, size.height * 0.0025000);
    path_0.lineTo(size.width * -0.0025000, 0);
    path_0.lineTo(0, size.height * 0.7350000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xFFffad2c)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class NewShape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = const Color(0xFFa462dd)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, size.height);
    path_0.quadraticBezierTo(size.width * 0.1116250, size.height * 1.0098500,
        size.width * 0.1525000, size.height * 0.9875000);
    path_0.cubicTo(
        size.width * 0.3105250,
        size.height * 0.9250000,
        size.width * 0.3233750,
        size.height * 0.9003750,
        size.width * 0.5025000,
        size.height * 0.8950000);
    path_0.cubicTo(
        size.width * 0.7014000,
        size.height * 0.9040500,
        size.width * 0.7069750,
        size.height * 0.9257000,
        size.width * 0.8500000,
        size.height * 0.9899000);
    path_0.quadraticBezierTo(size.width * 0.8852000, size.height * 1.0095000,
        size.width, size.height);
    path_0.lineTo(size.width, size.height * 0.0025000);
    path_0.lineTo(0, 0);
    path_0.lineTo(0, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color(0xFFa462dd)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ContainerShap extends CustomPainter {
  Color? shapeColor;
  ContainerShap({this.shapeColor});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = shapeColor ?? const Color(0xFFd7d7d7)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0225000, size.height * 0.0600000);
    path_0.lineTo(size.width * 0.0225000, size.height * 0.0600000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    Paint paint_stroke_0 = Paint()
      ..color = shapeColor ?? const Color(0xFFd7d7d7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    Paint paint_fill_1 = Paint()
      ..color = shapeColor ?? const Color(0xFFd7d7d7)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0675000, 0);
    path_1.quadraticBezierTo(0, size.height * -0.0200000,
        size.width * -0.0025000, size.height * 0.2100000);
    path_1.lineTo(size.width * -0.0025000, size.height * 0.8200000);
    path_1.quadraticBezierTo(size.width * -0.0012500, size.height * 1.0050000,
        size.width * 0.0525000, size.height);
    path_1.cubicTo(
        size.width * 0.2825000,
        size.height * 0.9975000,
        size.width * 0.7312500,
        size.height * 1.0025000,
        size.width * 0.9575000,
        size.height);
    path_1.quadraticBezierTo(size.width * 1.0006250, size.height * 0.9950000,
        size.width, size.height * 0.8100000);
    path_1.lineTo(size.width, size.height * 0.5800000);
    path_1.quadraticBezierTo(size.width * 0.9968750, size.height * 0.3750000,
        size.width * 0.9475000, size.height * 0.3600000);
    path_1.cubicTo(
        size.width * 0.8668750,
        size.height * 0.3575000,
        size.width * 0.6418750,
        size.height * 0.3625000,
        size.width * 0.5550000,
        size.height * 0.3600000);
    path_1.cubicTo(
        size.width * 0.4793750,
        size.height * 0.3825000,
        size.width * 0.4956250,
        size.height * 0.0075000,
        size.width * 0.4000000,
        0);
    path_1.cubicTo(
        size.width * 0.2800000,
        size.height * 0.0050000,
        size.width * 0.3975000,
        size.height * -0.0075000,
        size.width * 0.0675000,
        0);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    Paint paint_stroke_1 = Paint()
      ..color = shapeColor ?? const Color(0xFFd7d7d7)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class NewBottomshape extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 0.0025000, size.height * 0.8800000);
    path_0.lineTo(size.width * 0.0025000, size.height * 0.8800000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    Paint paint_stroke_0 = Paint()
      ..color = Color.fromARGB(255, 250, 251, 252)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);

    // Layer 1

    Paint paint_fill_1 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_1 = Path();
    path_1.moveTo(size.width * 0.0025000, size.height * -0.0100000);
    path_1.lineTo(size.width * 0.0025000, size.height * 1.0100000);
    path_1.lineTo(size.width, size.height);
    path_1.lineTo(size.width, size.height * 0.0100000);
    path_1.quadraticBezierTo(size.width * 0.9481250, size.height * 0.2375000,
        size.width * 0.6250000, size.height * 0.2300000);
    path_1.quadraticBezierTo(size.width * 0.5962500, size.height * 0.2125000,
        size.width * 0.6025000, size.height * 0.3500000);
    path_1.quadraticBezierTo(size.width * 0.6025000, size.height * 0.4525000,
        size.width * 0.6025000, size.height * 0.5300000);
    path_1.quadraticBezierTo(size.width * 0.6000000, size.height * 0.7750000,
        size.width * 0.5125000, size.height * 0.7600000);
    path_1.lineTo(size.width * 0.4825000, size.height * 0.7600000);
    path_1.quadraticBezierTo(size.width * 0.4175000, size.height * 0.7775000,
        size.width * 0.4100000, size.height * 0.5100000);
    path_1.quadraticBezierTo(size.width * 0.4093750, size.height * 0.4300000,
        size.width * 0.4100000, size.height * 0.3300000);
    path_1.quadraticBezierTo(size.width * 0.4131250, size.height * 0.2300000,
        size.width * 0.3775000, size.height * 0.2200000);
    path_1.quadraticBezierTo(size.width * 0.0737500, size.height * 0.2650000,
        size.width * 0.0025000, size.height * -0.0100000);
    path_1.close();

    canvas.drawPath(path_1, paint_fill_1);

    // Layer 1

    Paint paint_stroke_1 = Paint()
      ..color = Color.fromARGB(255, 252, 253, 253)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_1, paint_stroke_1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
