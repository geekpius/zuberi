import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  static const nameRoute = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.only(top: 45.0, left: 30.0, right: 30.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.0),
                      child: Text(
                        'Hello Eugene',
                        style: kFontStyle20,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.notifications_none,
                          color: Color(0xFF2300A6)),
                      onPressed: null,
                      iconSize: 30,
                    ),
                  ],
                ),
                SizedBox(height: 15),
                RichText(
                  text: TextSpan(
                    text: 'You have ',
                    style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF001514)),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'GHS 3000',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF001514)),
                      ),
                      TextSpan(text: ' of your salary remaining this month.'),
                    ],
                  ),
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
        ],
      ),
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
            icon: Icon(Icons.bar_chart),
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
        // currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey[700],
        // onTap: _onItemTapped,
      ),
    );
  }
}
