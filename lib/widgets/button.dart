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
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: const Color.fromARGB(209, 0, 0, 0),
            borderRadius: BorderRadius.circular(8),
          ),
        
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}