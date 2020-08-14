import 'package:flutter/material.dart';

class MyLine extends StatefulWidget {
  static const routeName = "customePainter";
  @override
  _MyLineState createState() => _MyLineState();
}

class _MyLineState extends State<MyLine> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Paint Learn"),
      ),
      body: Container(
        child: CustomPaint(
          size: Size(MediaQuery.of(context).size.width,
              MediaQuery.of(context).size.height),
          painter: DrawLine(offX: Offset(0100,0),offy: Offset(100,200)),
        ),
      ),
    );
  }
}

class DrawLine extends CustomPainter {
  Offset offX;
  Offset offy;

  DrawLine({this.offX,this.offy});
  @override
  void paint(Canvas canvas, Size size) {
    Paint line = new Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.square
      ..style = PaintingStyle.fill
      ..strokeWidth = 30;
    canvas.drawLine(offX,offy,line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}
