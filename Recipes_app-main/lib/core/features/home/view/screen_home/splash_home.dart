import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recipes/core/features/home/view/screen_home/home.dart';
import 'package:recipes/core/text_style.dart';

class Splashhome extends StatefulWidget {
  const Splashhome({super.key});

  @override
  State<Splashhome> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashhome> {
  na() {
    Future.delayed(
      Duration(seconds: 3),
          () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      ),
    );
  }

  @override
  void initState() {
    na();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFE0B2), Color(0xFFFFCC80)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.restaurant_menu ,size: 150, color: Colors.black,),
            SizedBox(height: 20,),
            Text("Recipes" ,style: textStyle.copyWith(fontSize: 50,fontWeight: FontWeight.w600))
          ],
        )
      ),
    );
  }
}
