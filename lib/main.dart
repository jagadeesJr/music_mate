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
        debugPrint('Resumed');
        break;
      case AppLifecycleState.inactive:
        // --
        debugPrint('Inactive');
        break;
      case AppLifecycleState.paused:
        // --
        debugPrint('Paused');
        break;
      case AppLifecycleState.detached:
        // --
        debugPrint('Detached');
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
      home: const Aboutus(),
    );
  }
}
