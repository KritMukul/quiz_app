import 'package:flutter/material.dart';
// import 'package:quiz_app/gradient_container.dart';
import 'package:quiz_app/home_page.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
      debugShowCheckedModeBanner: false,
    ),
  );
}
