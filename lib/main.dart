import 'package:flutter/material.dart';
import 'package:login/mylogin';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
          fontFamily: 'Roboto'
      ),
      debugShowCheckedModeBanner: false,
      home: const login(), // Note: HomePage with capital 'P'
    );
  }
}
