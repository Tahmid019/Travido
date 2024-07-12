import 'package:flutter/material.dart';
import 'package:travel/util/places.dart';
import 'package:travel/widgets/horizontalPlaceItem.dart';
import 'package:travel/widgets/verticalPlaceItem.dart';
// import 'package:travel/widgets/verticalPlaceItem.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      // appBar: AppBar(
      //   actions: <Widget>[
      //     IconButton(
      //       icon: const IconBadge(
      //         icon: Icons.notifications_none,
      //         size: 30,
      //         color: Colors.blueGrey,
      //       ),
      //       onPressed: () {},
      //     ),
      //   ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(221, 90, 89, 89),
        child: const Icon(Icons.map),
      ),
      body: Container(
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/planets.jpeg"),
        //     fit: BoxFit.cover,
        //   ),
        // ),
        child: ListView(
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Explore",
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: SearchBar(),
            ),
            buildHorizontalList(context),
            buildVerticalList(),
        
          ],
          
        ),
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10.0, left: 20.0),
      height: 250.0,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        primary: false,
        itemCount: places == null ? 0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places.reversed.toList()[index];
          return HorizontalPlaceItem(place: place, scale: 1.0);
        },
      ),
    );
  }

  buildVerticalList() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView.builder(
        primary: false,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: places == null ? 0 : places.length,
        itemBuilder: (BuildContext context, int index) {
          Map place = places[index];
          return VerticalPlaceItem(place: place);
        },
      ),
    );
  }

  
}