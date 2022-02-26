import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:home25/core/components/theme.dart';
import 'package:home25/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final Routess _myRoutess = Routess();

  @override
  Widget build(BuildContext context) {
    return AdaptiveTheme(
      light: ThemeComp.lightTheme,
      dark: ThemeComp.datkTheme,
      initial: AdaptiveThemeMode.light,
      builder: (lightTheme, darkThme) {
        return MaterialApp(
          title: "1bro_Bank",
          theme: lightTheme,
          darkTheme: darkThme,
          onGenerateRoute: _myRoutess.myRoutes,
          initialRoute: "/login",
          debugShowCheckedModeBanner: false,
        );
      },
    );
  }
}
