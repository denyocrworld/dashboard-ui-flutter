import 'package:flutter/material.dart';

import 'module/main_navigation/view/main_navigation_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff0f9565)),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainNavigationView(),
    );
  }
}
