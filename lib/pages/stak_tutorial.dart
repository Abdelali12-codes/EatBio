import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_icons/flutter_icons.dart';

class StackTutorial extends StatefulWidget {
  @override
  _StackTutorialState createState() => _StackTutorialState();
}

class _StackTutorialState extends State<StackTutorial> {
  List<Offset> points = [];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: Container(
        // height: 0,
        // width: 0,
        child: Container(
          // color: Colors.black,
          margin: EdgeInsets.symmetric(horizontal: 90, vertical: 100),
          child: Stack(
            // clipBehavior: Clip.hardEdge,
            children: [
              Container(
                width: size.width,
                height: size.height,
                child: Image.asset(
                  "assets/images/eat.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
              Stack(
                children: [
                  GestureDetector(
                    onPanDown: (details) {
                      setState(() {
                        points.add(details.localPosition);
                      });
                    },
                    onPanUpdate: (details) {
                      setState(() {
                        points.add(details.localPosition);
                      });
                    },
                    onPanEnd: (details) {
                      setState(() {
                        points.add(null);
                      });
                    },
                    child: Container(
                      width: size.width,
                      height: size.height,
                      child: CustomPaint(
                        painter: CustomisePaint(points: points),
                      ),
                    ),
                  )
                ],
              ),
              Positioned(
                top: 30,
                right: 10,
                child: Container(
                  child: IconButton(
                    icon: Icon(MaterialIcons.undo),
                    onPressed: () {
                      setState(() {
                        points.clear();
                      });
                    },
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Point {
  Offset coordinate;
  Color color;
  int stroke;
}

class CustomisePaint extends CustomPainter {
  List<Offset> points;
  CustomisePaint({this.points});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green
      ..strokeWidth = 8
      ..isAntiAlias = true
      ..strokeCap = StrokeCap.round;

    Paint rectpaint = Paint()..color = Colors.transparent;
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    canvas.drawRect(rect, rectpaint);
    for (var i = 0; i < points.length - 1; i++) {
      if (points[i] != null && points[i + 1] != null) {
        canvas.drawLine(points[i], points[i + 1], paint);
      } else if (points[i] != null && points[i + 1] == null) {
        canvas.drawPoints(PointMode.points, [points[i]], paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class CustomPoint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.grey[500]
      ..isAntiAlias = true;

    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height);

    canvas.drawRect(rect, paint);

    // the corners
    double cornerheight = 10;
    double cornerWidth = 20;

    Path path = Path()
      ..moveTo(rect.left, rect.top)
      ..lineTo(rect.left + cornerWidth, rect.top)
      ..lineTo(rect.left + cornerWidth, rect.top + cornerheight)
      ..lineTo(rect.left + cornerheight, rect.top + cornerheight)
      ..lineTo(rect.left + cornerheight, rect.top + cornerWidth)
      ..lineTo(rect.left, rect.top + cornerWidth)
      ..close();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
