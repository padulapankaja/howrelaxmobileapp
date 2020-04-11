import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final _fontSize = 36.0;
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Image.asset('assets/images/sl.jpg'),
    );
  }

}