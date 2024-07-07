
import 'package:flutter/material.dart';
class AniS extends StatefulWidget {
  @override
  _AniSState createState() =>
      _AniSState();
}

class _AniSState extends State<AniS> {
  // Define some gradient colors
  final List<Color> colors = [Colors.blue, Colors.purple, Colors.red];

  // Index to cycle through the colors
  int colorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          colorIndex = (colorIndex + 1) % colors.length;
        });
      },
      child: AnimatedContainer(
        duration: Duration(seconds: 1),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              colors[colorIndex].withOpacity(0.5),
              colors[colorIndex].withOpacity(1.0),
            ],
          ),
        ),
        child: Center(
          child: Text(
            'Tap to Change Gradient Color',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}