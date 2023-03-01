import 'package:flutter/material.dart';
import 'package:music_mate/screens/createroom/create_room.dart';
import 'package:music_mate/screens/login/forget_screen.dart';
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

class _MyAppState extends State<MyApp> {
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
        'dashboard': (context) => const JoinRoomWidget(),
        'profile_screen': (context) => const ProfileUpdate(),
        'profile_image_screen': (context) => const ProfileImageUpdate(),
        'join_room': (context) => const JoinRoomWidget(),
        'create_room': (context) => const CreateRoom(),
        'about_us': (context) => const CreateRoom(),
        'forgot_password': (context) => const ForgetScreen(),
      },
      initialRoute: 'splash_screen',
    );
  }
}
