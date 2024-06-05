import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:news_app_api/view/home_screen.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {

    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>HomeScreen()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Image.asset("assets/images/splash_pic.jpg",
                height: 300,width: double.infinity,fit: BoxFit.cover,),
            ),
            SizedBox(height: 20,),
            Text('T O P H E A D L I N E',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  color: Colors.orange,
              ),
            ),
            SizedBox(height: 20,),
            SpinKitChasingDots(
              color: Colors.orange.shade700,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }
}
