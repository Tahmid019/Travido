import 'package:flutter/material.dart';

class OptionScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: 110,),
                  Row(
                    children: [
                      CircleAvatar(
                        child: Icon(Icons.person, size: 18,),
                        radius: 18,
                      ),
                      SizedBox(width: 6,),
                      Text("Aman"),
                      SizedBox(width: 6,),
                      Icon(Icons.verified, size: 18,),
                      SizedBox(width: 6,),
                      TextButton(
                        onPressed: () {},
                        child: Text("Follow"
                          , style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Text('Travel all you want'),
              SizedBox(width: 10,),
              Row(
                children: [
                  Icon(Icons.music_note, size: 15,),
                  Text('original Audio'),
                ],
              ),
            ],
          ),
          Column(
            children: [
              
            ],
          ),
        ],
      ),
    );
  }
}