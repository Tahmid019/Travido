import 'package:flutter/material.dart';
import 'package:travel/widgets/iconB.dart';

class Favorite extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: IconBadge(
              icon: Icons.notifications_none,
              size: 30,
              color: Colors.blueGrey,
            ),
            onPressed: () {},
          ),
        ],

      ),


      body: Center(
          child: ListView(
            children: <Widget>[
              Text("Favorite"),
            ],
          ),
        ),
    );
  }
}