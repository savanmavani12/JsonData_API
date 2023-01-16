import 'package:api/screens/details.dart';
import 'package:api/screens/detailstwo.dart';
import 'package:api/screens/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        "/": (context) => const Homepage(),
        "details": (context) => const DetailsPage(),
        "details2": (context) => const DetailsPageTwo(),
      },
    ),
  );
}
