import 'dart:async';
import 'package:flutter/material.dart';
import 'package:music_mate/screens/walkthrough/walkthrough_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 10), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const WalkthroughScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          body: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    stops: [.5, .5],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Colors.lightBlue, Colors.yellow])),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Music",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: "Olimpos_bold",
                        letterSpacing: 2),
                  ),
                  Image(
                      height: 100,
                      width: 100,
                      image: AssetImage("assets/images/head.png")),
                  Text("Mate",
                      style: TextStyle(
                          fontSize: 24,
                          letterSpacing: 2,
                          fontFamily: "Olimpos_bold"))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
