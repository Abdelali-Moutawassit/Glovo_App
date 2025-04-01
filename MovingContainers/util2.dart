import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TouchMove2 extends StatefulWidget {
  const TouchMove2({super.key});

  @override
  State<TouchMove2> createState() => _TouchMove2State();
}

class _TouchMove2State extends State<TouchMove2> {
  bool _dragged1 = false;
  bool _dragged2 = false;
  bool _dragged3 = false;

  Offset _offset1 = Offset(100, 100);
  Offset _offset2 = Offset(125, 265);
  Offset _offset3 = Offset(260, 120);

  final Color colorOfContainer = Color.fromARGB(255, 48, 48, 48);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: _offset1.dx,
          top: _offset1.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _offset1 = Offset(
                  _offset1.dx + details.delta.dx,
                  _offset1.dy + details.delta.dy,
                );
              });
            },
            child: Container(
              width: 125,
              height: 125,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.circular(90)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.food_bank,
                    size: 50,
                    color: Colors.white,
                  ),
                  Text(
                    "Food",
                    style: GoogleFonts.inter(fontSize: 32, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: _offset2.dx,
          top: _offset2.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _offset2 = Offset(
                  _offset2.dx + details.delta.dx,
                  _offset2.dy + details.delta.dy,
                );
              });
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.circular(90)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.car_crash,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    "KFC",
                    style: GoogleFonts.inter(fontSize: 20, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: _offset3.dx,
          top: _offset3.dy,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                _offset3 = Offset(
                  _offset3.dx + details.delta.dx,
                  _offset3.dy + details.delta.dy,
                );
              });
            },
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 48, 48, 48),
                  borderRadius: BorderRadius.circular(90)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.graphic_eq_outlined,
                    size: 20,
                    color: Colors.white,
                  ),
                  Text(
                    "Supermarket",
                    style: GoogleFonts.inter(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
