import 'package:flutter/material.dart';

class ImageBox extends StatelessWidget {

  final String imagePath;
  const ImageBox ({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey
        ),
        borderRadius: BorderRadius.circular(10),
        color: Color.fromARGB(97, 156, 155, 155),
      ),
      child: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
    );
  }
  
}