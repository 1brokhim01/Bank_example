import 'package:flutter/material.dart';
import 'package:home25/screens/my_home_page.dart';
import 'package:home25/screens/pages/card/card_page.dart';
import 'package:home25/screens/pages/homee/homee_page.dart';
import 'package:home25/screens/pages/login/login_page.dart';
import 'package:home25/screens/pages/profile/profile_page.dart';
import 'package:home25/screens/pages/settingss/settings_page.dart';
import 'package:home25/screens/pages/transactions/trsactions_page.dart';

class Routess {
  Route? myRoutes(RouteSettings s) {
    switch (s.name) {
      case "/":
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case "/login":
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case "/home":
        return MaterialPageRoute(builder: (_) => const HomePage());
      case "/cards":
        return MaterialPageRoute(builder: (context) => const CardPage());
      case "/trans":
        return MaterialPageRoute(
            builder: (context) => const TransactionsPage());
      case "/profile":
        return MaterialPageRoute(builder: (context) => const ProfilePage());
      case "/settings":
        return MaterialPageRoute(builder: (_) => const SettingsPage());
    }
  }
}
