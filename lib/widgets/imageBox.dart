import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {

  final String imagePath;
  const ImageBox ({
    Key?key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(97, 156, 155, 155),
      ),
      child: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
    );
  }
  
}