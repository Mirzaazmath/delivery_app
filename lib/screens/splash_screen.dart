import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>with SingleTickerProviderStateMixin {

  late AnimationController _animationController;
  late Animation<double>_animation;

  @override
  void initState() {

    super.initState();
    // animation controller
    _animationController=AnimationController(vsync: this,duration:const  Duration(seconds: 2));
    // animation
    _animation=CurvedAnimation(parent: _animationController, curve: Curves.bounceIn);
    // animation Starts
    _animationController.forward();
    // Create a timer to auto Navigate to HomeScreen after 3 seconds
    Timer(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomeScreen()));
    });

  }
  // Dispose
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animationController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ScaleTransition for animation
        child: ScaleTransition(
          scale: _animation,
          child: SizedBox(
            height: 200,
              width: 200,
              child: Image.asset("assets/splash.png")),
        ),
      ),
    );
  }
}
