import 'package:flutter/material.dart';

class HorizontalSlider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
//      child: Image.asset('assets/images/sl.jpg'),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          children: <Widget>[

            Container(
              width: 160.0,
              margin: EdgeInsets.all( 10.0),
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.5)
              ),
            ),
            Container(
              width: 160.0,

              margin: EdgeInsets.all( 10.0),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.5)
              ),
            ),
            Container(
              width: 160.0,

              margin: EdgeInsets.all( 10.0),
              decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(10.5)
              ),
            ),
            Container(
              width: 160.0,

              margin: EdgeInsets.all( 10.0),
              decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10.5)
              ),
            ),
            Container(
              width: 160.0,

              margin: EdgeInsets.all( 10.0),
              decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10.5)
              ),
            ),
          ],
        ),
      ),
    );
  }
}