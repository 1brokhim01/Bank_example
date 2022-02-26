import 'package:flutter/material.dart';
import 'package:home25/screens/pages/card/card_page.dart';
import 'package:home25/screens/pages/homee/homee_page.dart';
import 'package:home25/screens/pages/profile/profile_page.dart';
import 'package:home25/screens/pages/settingss/settings_page.dart';
import 'package:home25/screens/pages/transactions/trsactions_page.dart';

import '../core/constants/constants.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _currentIndex = 0;
  List<Widget> _class = [];
  final keyHome = const PageStorageKey("home");
  final keyCards = const PageStorageKey("like");
  final keyTrans = const PageStorageKey("add");
  final keyProfile = const PageStorageKey("comment");
  final keySettings = const PageStorageKey("settings");

  @override
  void initState() {
    super.initState();
    _class = [
      HomePage(key: keyHome),
      CardPage(key: keyCards),
      TransactionsPage(key: keyTrans),
      ProfilePage(key: keyProfile),
      SettingsPage(key: keySettings)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _class[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
              backgroundColor: Kprimary.kPRimary4),
          BottomNavigationBarItem(
              icon: const Icon(
                Icons.credit_card_outlined
              ),
              label: "Cards",
              backgroundColor: Kprimary.kPRimary4),
          BottomNavigationBarItem(
              icon: const Icon(Icons.text_snippet_sharp),
              label: "Transactions",
              backgroundColor: Kprimary.kPRimary4),
          BottomNavigationBarItem(
              icon: const Icon(Icons.person),
              label: "Profile",
              backgroundColor: Kprimary.kPRimary4),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Kprimary.kPRimary4,
          ),
        ],
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
      ),
    );
  }
}
