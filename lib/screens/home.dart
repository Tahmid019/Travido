import 'package:flutter/material.dart';
import 'package:travel/util/places.dart';
import 'package:travel/widgets/horizontalPlaceItem.dart';
import 'package:travel/widgets/iconB.dart';
// import 'package:travel/widgets/verticalPlaceItem.dart';

class Home extends StatelessWidget {
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
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Explore",
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: SearchBar(),
          ),
          buildHorizontalList(context),
          // buildVerticalList(),
        ],
      ),
    );
  }

  buildHorizontalList(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, left: 20.0),
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

  // buildVerticalList() {
  //   return Padding(
  //     padding: EdgeInsets.all(20.0),
  //     child: ListView.builder(
  //       primary: false,
  //       physics: NeverScrollableScrollPhysics(),
  //       shrinkWrap: true,
  //       itemCount: places == null ? 0 : places.length,
  //       itemBuilder: (BuildContext context, int index) {
  //         Map place = places[index];
  //         return VerticalPlaceItem(place: place);
  //       },
  //     ),
  //   );
  // }
}