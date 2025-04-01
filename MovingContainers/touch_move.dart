import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Offset _offset1 = Offset(0, 0);
  Offset _offset2 = Offset(0, 0);
  Offset _offset3 = Offset(0, 0);

  Offset _initialOffset1 = Offset(0, 0);
  Offset _initialOffset2 = Offset(0, 0);
  Offset _initialOffset3 = Offset(0, 0);

  bool _isDragging1 = false;
  bool _isDragging2 = false;
  bool _isDragging3 = false;

  @override
  void initState() {
    super.initState();
    _initialOffset1 = _offset1;
    _initialOffset2 = _offset2;
    _initialOffset3 = _offset3;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Moving Containers'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: _offset1.dx,
            top: _offset1.dy,
            child: GestureDetector(
              onPanDown: (details) {
                setState(() {
                  _isDragging1 = true;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  _offset1 = Offset(
                    _offset1.dx + details.delta.dx,
                    _offset1.dy + details.delta.dy,
                  );
                });
              },
              onPanEnd: (details) {
                setState(() {
                  _isDragging1 = false;
                  _offset1 = _initialOffset1;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
          ),
          Positioned(
            left: _offset2.dx,
            top: _offset2.dy,
            child: GestureDetector(
              onPanDown: (details) {
                setState(() {
                  _isDragging2 = true;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  _offset2 = Offset(
                    _offset2.dx + details.delta.dx,
                    _offset2.dy + details.delta.dy,
                  );
                });
              },
              onPanEnd: (details) {
                setState(() {
                  _isDragging2 = false;
                  _offset2 = _initialOffset2;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            left: _offset3.dx,
            top: _offset3.dy,
            child: GestureDetector(
              onPanDown: (details) {
                setState(() {
                  _isDragging3 = true;
                });
              },
              onPanUpdate: (details) {
                setState(() {
                  _offset3 = Offset(
                    _offset3.dx + details.delta.dx,
                    _offset3.dy + details.delta.dy,
                  );
                });
              },
              onPanEnd: (details) {
                setState(() {
                  _isDragging3 = false;
                  _offset3 = _initialOffset3;
                });
              },
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
