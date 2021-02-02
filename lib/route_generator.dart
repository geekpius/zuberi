import 'package:flutter/material.dart';
import 'package:zuberi/screens/login_screen.dart';
import 'package:zuberi/screens/splash_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
//    final args = settings.arguments;

    switch (settings.name) {
      case SplashScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case LoginScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => LoginScreen());
//      case 'location':
//        return MaterialPageRoute(
//          builder: (context) => LocationScreen(
//            weatherData: args,
//          ),
//        );
//      case 'city':
//        return MaterialPageRoute(builder: (context) => CityScreen());
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('ERROR'),
          centerTitle: true,
        ),
        body: Center(
          child: Text('Page not found!'),
        ),
      );
    });
  }
}