import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  final Function()? onTap;
  final String text;

  const Button({Key?key, required this.onTap, required this.text}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Color.fromARGB(209, 0, 0, 0),
            borderRadius: BorderRadius.circular(8),
          ),
        
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}