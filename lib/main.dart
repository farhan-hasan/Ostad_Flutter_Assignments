import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.blue, foregroundColor: Colors.white),
          textTheme: const TextTheme(
            displayMedium: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
            )
          )
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
