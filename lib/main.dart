import 'package:flutter/material.dart';
import 'package:zuberi/route_generator.dart';
import 'package:zuberi/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.white
      ),
      initialRoute: SplashScreen.nameRoute,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}