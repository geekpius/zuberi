import 'package:flutter/material.dart';
import 'package:zuberi/screens/home_tab_screen.dart';
import 'package:zuberi/screens/profile_screen.dart';

import '../constants.dart';

class HomeScreen extends StatefulWidget {
  static const nameRoute = 'home';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 2;

  final List<Widget> _widgetTabs = <Widget>[
    Text(
      'Index 0: Home',
      style: kFontStyle14
    ),
    Text(
      'Index 1: Business',
      style: kFontStyle14,
    ),
    HomeTabScreen(),
    Text(
      'Index 3: School',
      style: kFontStyle14,
    ),
    ProfileScreen(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body:  _widgetTabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.watch_later_outlined),
            label: 'HISTORY',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'EXPLORE',
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              backgroundColor: _currentIndex == 2 ? kCustomPinkColor:Colors.black.withOpacity(0.1),
              radius: 25,
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 23,
                child: CircleAvatar(
                  radius: 12,
                  backgroundImage: AssetImage('assets/images/zuberi.png'),
                ),
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_box),
            label: 'SAVING',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'ACCOUNT',
          ),
        ],
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        selectedItemColor: kCustomPinkColor,
        unselectedItemColor: Colors.black.withOpacity(0.4),
        selectedFontSize: 8,
        unselectedFontSize: 8,
        iconSize: 22,
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        }
      ),
    );
  }
}
