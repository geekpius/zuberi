import 'package:flutter/material.dart';
import 'package:zuberi/screens/login_screen.dart';
import 'package:zuberi/widgets/divider.dart';
import 'package:zuberi/widgets/rounded_button.dart';

import '../constants.dart';

class ProfileScreen extends StatelessWidget {
  static const nameRoute = 'profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 80.0, left: 40.0, right: 40.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('User profile', style: kFontStyle20),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user.jpeg'),
                    radius: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Eugene Ming',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Text(
                          'Fidelity Bank, Accra Ghana',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'eugeneming@fidelitybank.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 75.0, top: 12),
                child: Text(
                  '+233 55 876 71 22',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 85.0, top: 25),
                child: Row(
                  children: [
                    Icon(
                      Icons.edit,
                      color: kCustomPinkColor,
                      size: 12,
                    ),
                    SizedBox(width: 5),
                    Text(
                      'Edit Profile',
                      style: TextStyle(color: kCustomPinkColor, fontSize: 10.0),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              CustomDivider(),
              Padding(
                padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.access_time_outlined,
                          color: kCustomBlueColor,
                          size: 20,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Transaction History',
                          style: TextStyle(
                              color: kCustomBlueColor.withOpacity(0.7)),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.download_rounded,
                          color: kCustomPinkColor,
                          size: 12,
                        ),
                        SizedBox(width: 5),
                        Text(
                          'Download',
                          style: TextStyle(
                              color: kCustomPinkColor, fontSize: 10.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CustomDivider(),
              SizedBox(height: 20),
              Text(
                'Account',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Change password',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black.withOpacity(0.5),
                    size: 10,
                  ),
                ],
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bank Information',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black.withOpacity(0.5),
                    size: 10,
                  ),
                ],
              ),
              CustomDivider(),
              SizedBox(height: 20),
              Text(
                'Settings',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notifications',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black.withOpacity(0.5),
                    size: 10,
                  ),
                ],
              ),
              CustomDivider(),
              SizedBox(height: 20),
              Text(
                'Support',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Help center',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black.withOpacity(0.5),
                    size: 10,
                  ),
                ],
              ),
              CustomDivider(),
              SizedBox(height: 20),
              Text(
                'About',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Version',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Text(
                    '0.12',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.5), fontSize: 12),
                  ),
                ],
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Terms of use',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black.withOpacity(0.5),
                    size: 10,
                  ),
                ],
              ),
              CustomDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Privacy',
                    style: TextStyle(color: Colors.black.withOpacity(0.5)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.black.withOpacity(0.5),
                    size: 10,
                  ),
                ],
              ),
              CustomDivider(),
              SizedBox(height: 40),
              RoundedButton(
                onPressed: (){
                  Navigator.pushNamed(context, LoginScreen.nameRoute);
                },
                text: 'Logout',
                color: Color(0xFF2D00D3),
                textStyle: kFontStyle14,
                minWidth: 330,
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),

      // bottomNavigationBar: BottomNavigation(currentIndex: 4,),
    );
  }
}
