import 'package:delivery_app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
void  main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Delivery App",
      theme: ThemeData(
        primaryColor: const Color(0xffd3e4ff),
      ),
      home:const  SplashScreen(),

    );
  }
}
