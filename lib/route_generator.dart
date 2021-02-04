import 'package:flutter/material.dart';
import 'package:zuberi/screens/congratulation_screen.dart';
import 'package:zuberi/screens/home_screen.dart';
import 'package:zuberi/screens/login_screen.dart';
import 'package:zuberi/screens/splash_screen.dart';
import 'package:zuberi/screens/transaction_summary_screen.dart';
import 'package:zuberi/screens/withdraw_amount_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case SplashScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case LoginScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => LoginScreen());

      case HomeScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => HomeScreen());

      case WithdrawAmountScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => WithdrawAmountScreen());

      case TransactionSummaryScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => TransactionSummaryScreen());

      case CongratulationScreen.nameRoute:
        return MaterialPageRoute(builder: (context) => CongratulationScreen());


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