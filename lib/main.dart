import 'package:flutter/material.dart';
import 'package:news_app_api/splash/splash.dart';
import 'package:news_app_api/view/home_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Splash(),

    );
  }
}
// class Shakib{
//   jhdf
// }