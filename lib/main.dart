import 'package:flutter/material.dart';
import 'package:pokedex/dashboard/dashboard_page.dart';
import 'package:pokedex/widgets/bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: Color.fromRGBO(217, 74, 74, 1)),
      ),
      home: DashboardPage());
  }
}
