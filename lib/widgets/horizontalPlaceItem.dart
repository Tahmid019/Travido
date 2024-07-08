import 'package:flutter/material.dart';

import '../screens/details.dart';

class HorizontalPlaceItem extends StatelessWidget {
  final Map place;
  final double scale;

  const HorizontalPlaceItem({super.key, required this.place, required this.scale});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return Details(place_details: place);
              },
            ),
          );
        },
        child: Material(
          color: Colors.transparent,
          child: SizedBox(
            height: 250.0 * scale,
            width: 140.0 * scale,
            child: Column(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "${place["img"]}",
                    height: 178.0 * scale,
                    width: 140.0 * scale,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 7.0 * scale),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${place["name"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15.0 * scale,
                    ),
                    maxLines: 2,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 3.0 * scale),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "${place["location"]}",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13.0 * scale,
                      color: Colors.blueGrey[300],
                    ),
                    maxLines: 1,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
