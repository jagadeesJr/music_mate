import 'package:flutter/material.dart';
import 'package:music_mate/screens/splash/splash_screen.dart';

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
      title: 'Music Mate',
      themeMode:ThemeMode.system,
      theme: ThemeData(
        fontFamily: "Olimpos_light",
        primarySwatch: Colors.amber,
      ),
      home: const SplashScreen(),
    );
  }
}
