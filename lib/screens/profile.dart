// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:travel/widgets/iconB.dart';


class Profile extends StatelessWidget {

  static const double coverHeight = 280;
  static const double profileHeight = 144;

  const Profile({Key? key}) : super(key: key);
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
            SizedBox(height: 20),
            profileTemplate(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildCoverImage() {
    return Container(
            color: Colors.grey,
            child: Image.asset("assets/images/Paris.jpeg", width: double.infinity, height: coverHeight, fit: BoxFit.cover),
            
          );

  }

  Widget buildProfileImage() {
    return CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey.shade800,
      backgroundImage: AssetImage("assets/images/profile.jpeg"),
    );
  }

  Widget buildUp(){
    return Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: profileHeight/2),
                child: buildCoverImage()
                ),
              Positioned(
                top: coverHeight - profileHeight/2,
                child: buildProfileImage()),
            ],
          );
  }

  Widget buildTravelButton(IconBadge icon){
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 2), 
            blurRadius: 6.0
          )
        ]
      ),
      child: icon,
    );
  }

  Widget buildDetails(){
    return Column(
      children: <Widget>[
        Text("Aman", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
        SizedBox(height: 10),
        Text("Traveller", style: TextStyle(fontSize: 18),),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildTravelButton(IconBadge(icon: Icons.facebook, size: 40, color: const Color.fromARGB(255, 0, 0, 0),)),
            SizedBox(width: 10),
            
          ],
        ),
        SizedBox(height: 10),
        Container(
          child: Column(
            children: const <Widget>[
              Row(children: [Icon(Icons.location_on, size: 15),Text("Paris, France", style: TextStyle(fontSize: 15),),],),
              
              SizedBox(width: 10),
              FittedBox(
                fit: BoxFit.contain,
                child: Text("I have always been captivated by the world beyond my small town's borders. With a well-worn backpack and a camera slung around my neck, I embark on journeys to far-flung destinations, seeking the stories hidden in the bustling markets of Marrakech, the serene temples of Kyoto, and the rugged landscapes of Patagonia. My journal is filled with sketches and notes, capturing the essence of each place I visit. My curiosity leads me to forge connections with locals, learning their customs and traditions, which I cherish as much as the stunning vistas I photograph. My travels are not just about the places I see but the people I meet and the cultures I immerse myself in, making every adventure a chapter in my ever-growing book of life.", 
                overflow: TextOverflow.fade,
                style: TextStyle(fontSize: 10),),
              ),

              
            ],
          ),
        ),

      ],
    );
  }

  Widget profileTemplate() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: Column(
        children: <Widget>[
          buildUp(),
          SizedBox(height: 20),
          buildDetails(),

          
          ],
      ),
    );
  }
}