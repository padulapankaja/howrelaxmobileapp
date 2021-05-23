import 'package:flutter/material.dart';
import '../common/card_horisontal_slider.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _fontSize = 36.0;
    return Container(
        child:  Row(
          children: <Widget>[
            HorizontalSlider(),
          ],
        ),

    );


//      Stack(
//      overflow: Overflow.visible,
//          children: <Widget>[
//            HorizontalSlider(),
//            Positioned(
//              top: 250,
//              child:  Center(
//                child: Container(
//                  height: 300,
//                  margin: EdgeInsets.only(left: 10.0, right: 10.0),
//                  width:MediaQuery.of(context).size.width * 0.99,
//                  color: Colors.grey,
//                  child: Text("Hello"),
//                ),
//              ),
//            )
//          ],
//
//    );

  }
}
