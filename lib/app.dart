import 'package:flutter/material.dart';
import 'package:flutter_first_project/core/app_theme/app_theme.dart';
import 'package:flutter_first_project/view/bottom_navigation_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      debugShowCheckedModeBanner: false,
      home: const BottomNavigationView(),
    );
  }
}
