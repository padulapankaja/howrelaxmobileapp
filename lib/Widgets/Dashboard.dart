import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'Home.dart';
import 'Business.dart';
import 'School.dart';
import 'Work.dart';

class Dashboard extends StatefulWidget {
  @override
  _Dashboard createState() => _Dashboard();
}

class _Dashboard extends State<Dashboard> {
  int _selectedPage = 0;
  final _pageOptions = [
    Homepage(),
    BusinessPage(),
    SchoolPage(),
    WorkPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'newone',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Welcome to Howrelax'),
          ),
          body: _pageOptions[_selectedPage],
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _selectedPage,
            onTap: (int index) {
              setState(() {
                _selectedPage = index;
              });
              displayToast("You are in ${_selectedPage}");
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home, color: Colors.teal[400],),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.business),
                title: Text('Business'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.school),
                title: Text('School'),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.work,
                ),
                title: Text('Account'),
              )
            ],
            selectedItemColor: Colors.amber[800],
            unselectedItemColor: Colors.black,
          ),
        ));
  }

  void displayToast(String message) {
    Fluttertoast.showToast(msg: message);
  }
}
