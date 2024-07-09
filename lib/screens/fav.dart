import 'package:flutter/material.dart';
import 'package:travel/widgets/iconB.dart';

class Favorite extends StatelessWidget{
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const IconBadge(
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
            children: const <Widget>[
              Text("Favorite"),
            ],
          ),
        ),
    );
  }
}