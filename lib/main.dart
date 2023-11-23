import 'package:flutter/material.dart';
import 'package:flutter_application_1/application_page.dart';
import 'package:flutter_application_1/counter_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/screens/listview_1.dart';
import 'package:flutter_application_1/statefull_w.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const ListView1(),
    );
  }
}
