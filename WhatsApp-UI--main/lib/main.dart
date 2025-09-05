import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/core/feature/home/view/HomeScreen.dart';
import 'package:untitled2/core/feature/home/view/SplashScreen.dart';
import 'package:untitled2/core/feature/home/view/pages.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen(),);
  }
}
