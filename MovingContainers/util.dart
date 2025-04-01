import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MovingContainer extends StatefulWidget {
  State<MovingContainer> createState() => _MovingContainerState();
}

class _MovingContainerState extends State<MovingContainer> {
  Offset _container1 = Offset(100, 100);

  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onPanUpdate: (details) {
            setState(() {
              _container1 = Offset(
                _container1.dx + details.delta.dx,
                _container1.dy + details.delta.dy,
              );
            });
          },
          child: AnimatedContainer(
            decoration: BoxDecoration(
              color: Colors.grey,
            ),
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            width: 100,
            height: 100,
            margin: EdgeInsets.only(left: _container1.dx, top: _container1.dy),
          ),
        ),
      ],
    );
  }
}
