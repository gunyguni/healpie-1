import 'package:flutter/material.dart';

class BoxSlider extends StatelessWidget {
  final double width;
  final double height;

  BoxSlider({this.width, this.height});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: height,
            child: ListView(
              padding: EdgeInsets.only(left: 10, right: 10),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/workout.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/workout.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/workout.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/workout.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
