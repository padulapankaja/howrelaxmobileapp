import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:fluttertoast/fluttertoast.dart';

//import other widgets
import './Widgets/Home.dart';
import './Widgets/Business.dart';
import './Widgets/School.dart';

import './Widgets/Work.dart';

import 'Dashboard.dart';
import './Widgets/WelcomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,

        home: WelcomePage(),

      );

  }

}

