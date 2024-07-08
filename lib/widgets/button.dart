import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  
  final Function()? onTap;

  const Button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 46, 45, 45),
            borderRadius: BorderRadius.circular(8),
          ),
        
        child: Center(
          child: Text(
            "Button",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}