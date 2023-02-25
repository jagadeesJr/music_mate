import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
       routes: {
        '/':(context) => const NoInternet(),
        'splash_screen' :(context) => const SplashScreen(),
        'walk_through' :(context) => const WalkthroughScreen(),
        'no_internet' :(context) => const NoInternet(),
      },
        initialRoute: 'splash_screen',  
    );
  }
}
