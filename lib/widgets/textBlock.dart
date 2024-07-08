import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextBlock({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: const Color.fromARGB(103, 255, 255, 255)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 187, 185, 185)),
                    ),
                    fillColor: Color.fromARGB(179, 90, 89, 89),
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Color.fromARGB(255, 153, 151, 151)),
                  ),
                ),
              ),
    );
  }
}