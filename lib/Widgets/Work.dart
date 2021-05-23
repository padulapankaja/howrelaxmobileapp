import 'package:flutter/material.dart';

class WorkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _fontSize = 36.0;
    return Container(
      padding: EdgeInsets.all(25.0),
      child: Text(
        'WorkPage',
        style: TextStyle(fontSize: _fontSize),
      ),
    );
  }
}
