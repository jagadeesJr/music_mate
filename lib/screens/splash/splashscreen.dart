import 'dart:async';
import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, 'walk_through');
    });
  }

  Future<bool> onBackButtonPressed() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return WillPopScope(
            onWillPop: onBackButtonPressed,
            child: Scaffold(
              body: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        stops: [.5, .5],
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [Color(0xFF18122B), Color(0xFF635985)])),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Music",
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 4,
                            fontFamily: "Olimpos_bold",
                            color: const Color(0xFFBAD7E9),
                            letterSpacing: 2),
                      ),
                      Image(
                          height: SizeConfig.blockSizeVertical! * 12,
                          width: SizeConfig.blockSizeHorizontal! * 40,
                          image: const AssetImage("assets/images/head.png")),
                      Text("Mate",
                          style: TextStyle(
                              fontSize: SizeConfig.blockSizeVertical! * 4,
                              letterSpacing: 2,
                              color: const Color(0xFFBAD7E9),
                              fontFamily: "Olimpos_bold"))
                    ],
                  ),
                ),
              ),
            ));
      },
    );
  }
}
