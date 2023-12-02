import 'package:click_solidario/_comum/appcolors.dart';

import 'package:flutter/material.dart';

import 'home.dart';
import 'home1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CLICK SOLIDÁRIO',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.azul),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}
