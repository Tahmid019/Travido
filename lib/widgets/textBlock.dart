import 'package:flutter/material.dart';

class TextBlock extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const TextBlock({
    Key?key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(103, 255, 255, 255)),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color.fromARGB(255, 187, 185, 185)),
                    ),
                    fillColor: const Color.fromARGB(179, 90, 89, 89),
                    filled: true,
                    hintText: hintText,
                    hintStyle: const TextStyle(color: Color.fromARGB(255, 153, 151, 151)),
                  ),
                ),
              ),
    );
  }
}