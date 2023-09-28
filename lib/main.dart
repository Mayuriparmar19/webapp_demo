import 'package:flutter/material.dart';
import 'package:webapp_demo/Pages/home.dart';
import 'package:webapp_demo/Utils/colors.dart';

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
      title: 'Web App',
      theme: ThemeData(

        primaryColor: AppColors.primary
        // fontFamily: 'HindSiliguri'
      ),
      home:const Home(),
    );
  }
}


