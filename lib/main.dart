import 'dart:async';

import 'package:flutter/material.dart';

import 'package:music_mate/screens/login/login_screen.dart';
import 'package:music_mate/screens/registration/registration_screen.dart';

import '../../globalaccess/applib/applib.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        // --
        print('Resumed');
        break;
      case AppLifecycleState.inactive:
        // --
        print('Inactive');
        break;
      case AppLifecycleState.paused:
        // --
        print('Paused');
        break;
      case AppLifecycleState.detached:
        // --
        print('Detached');
        break;
    }
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Music Mate',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        fontFamily: "Olimpos_light",
        primarySwatch: Colors.indigo,
      ),
      routes: {
        '/': (context) => const NoInternet(),
        'splash_screen': (context) => const SplashScreen(),
        'walk_through': (context) => const WalkthroughScreen(),
        'login_screen': (context) => const LoginScreenWidget(),
        'register': (context) => const RegisterScreen(),
        'interest_screen': (context) => const InterestScreen(),
        'no_internet': (context) => const NoInternet(),
        'dashboard': (context) => const Dashboard(),
        'profile_screen': (context) => const ProfileUpdate(),
        'profile_image_screen': (context) => const ProfileImageUpdate(),
        'join_room': (context) => const JoinRoomWidget(),
        'create_room': (context) => const CreateRoom(),
        'about_us': (context) => const Aboutus(),
        'forgot_password': (context) => const ForgetScreen(),
        'play_screen': (context) => const PlayScreen(),
      },
      initialRoute: 'splash_screen',
    );
  }
}
