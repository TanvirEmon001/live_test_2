import 'package:flutter/material.dart';
import 'package:live_test_2/add_employe.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AddEmploye(),
    );
  }
}
