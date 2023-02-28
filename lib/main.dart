import 'package:flutter/material.dart';
import 'package:music_mate/screens/profile/profile.dart';
import '../../globalaccess/applib/applib.dart';
import 'screens/profilepicture/profile_update.dart';


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
        primarySwatch: Colors.indigo,
      ),
       routes: {
        '/':(context) => const NoInternet(),
        'splash_screen' :(context) => const SplashScreen(),
        'walk_through' :(context) => const WalkthroughScreen(),
        'no_internet' :(context) => const NoInternet(),
        'dashboard' :(context) => const Dashboard(),
        'profile_screen' :(context) => const ProfileUpdate(),
        'profile_image_screen' :(context) => const ProfileImageUpdate(),
      },
      initialRoute: 'dashboard',  
    );
  }
}
