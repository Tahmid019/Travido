import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {
  const OptionScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  const SizedBox(height: 110,),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 18,
                        child: Icon(Icons.person, size: 18,),
                      ),
                      const SizedBox(width: 6,),
                      const Text("Aman"),
                      const SizedBox(width: 6,),
                      const Icon(Icons.verified, size: 18,),
                      const SizedBox(width: 6,),
                      TextButton(
                        onPressed: () {},
                        child: const Text("Follow"
                          , style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(width: 10,),
              const Text('Travel all you want'),
              const SizedBox(width: 10,),
              const Row(
                children: [
                  Icon(Icons.music_note, size: 15,),
                  Text('original Audio'),
                ],
              ),
            ],
          ),
          const Column(
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}