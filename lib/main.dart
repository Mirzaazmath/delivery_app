import 'package:delivery_app/screens/order_status/order_status_screen.dart';
import 'package:delivery_app/screens/delivery_app/splash_screen.dart';
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
      home:OrderStatusScreen(),
      //const  SplashScreen(),

    );
  }
}
