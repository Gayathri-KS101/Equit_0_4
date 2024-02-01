import 'package:equit_0_4/view/home.dart';
import 'package:equit_0_4/view/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool showingSplash=true;
  Loadhome(){
    Future.delayed(Duration(seconds: 3),(){
      setState(() {
        showingSplash = false;
      });
      //Navigator.pushReplacement(
      //context, MaterialPageRoute(builder: (context)=>HomeScreen()));
    });
  }


  @override
  void initState(){
    super.initState();
    Loadhome();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Equit',
      theme: ThemeData(primarySwatch: Colors.indigo,
      ),
      home: showingSplash ? SplashScreen(): HomeScreen(),
    );
  }
}


