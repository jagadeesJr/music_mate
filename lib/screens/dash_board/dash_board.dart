import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  List<Widget> tabItems = [
    const Center(child: Text("Home")),
    const Center(child: Text("Music")),
    const Center(child: Text("Chat")),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        drawer: Drawer(),
        appBar: AppBar(
          toolbarHeight: SizeConfig.blockSizeVertical! * 12,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 90, 71, 155),
          title: Text(
            'Music Mate',
            style: TextStyle(
              fontFamily: 'Olimpos_light',
              fontSize: SizeConfig.blockSizeVertical! * 3.5,
              color: Colors.white,
            ),
          ),
        ),
        body: Center(
          child: tabItems[selectedIndex],
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: FlashyTabBar(
            animationDuration: const Duration(milliseconds: 300),
            animationCurve: Curves.linear,
            selectedIndex: selectedIndex,
            iconSize: SizeConfig.blockSizeVertical! * 3,
            showElevation: false,
            onItemSelected: (value) {
              setState(() {
                selectedIndex = value;
              });
            },
            items: [
              FlashyTabBarItem(
                  icon: const Icon(Icons.home),
                  title: const Text(
                    'Home',
                    style: TextStyle(color: Colors.black),
                  )),
              FlashyTabBarItem(
                  icon: const Icon(Icons.music_note_rounded),
                  title: const Text(
                    'Music',
                    style: TextStyle(color: Colors.black),
                  )),
              FlashyTabBarItem(
                  icon: const Icon(Icons.chat),
                  title: const Text(
                    'Chat',
                    style: TextStyle(color: Colors.black),
                  ))
            ],
          ),
        ),
      );
    });
  }
}
