import 'package:flutter/material.dart';
import 'package:luncha/screens/login.dart';
import 'package:luncha/screens/lunchi/home.dart';
import 'package:luncha/screens/lunchi/orders.dart';
import 'package:luncha/screens/successful_page.dart';
import 'package:luncha/screens/user/home.dart';
import 'package:luncha/theme/luncha_theme.dart';

import 'navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final theme = LunchaTheme.dark();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: theme,
      home: LoginScreen(),
      routes: {
        login: (context) => LoginScreen(),
        userHome: (context) => UserHomePage(),
        lunchiHome: (context) => LunchiHomePage(),
        successPage: (context) => SuccessfulPage(),
        orderPage: (context) => Orders(),
      },
    );
  }
}
