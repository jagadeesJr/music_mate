import 'package:flutter/material.dart';
import 'package:music_mate/global_access/toast_message/toster.dart';

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
      home: MyWidget()
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context)
              ..hideCurrentSnackBar()
              ..showSnackBar(ToastMessge().toasterMessage());
          },
          child: const Text('View our music'),
        ),
      ));
  }
}
