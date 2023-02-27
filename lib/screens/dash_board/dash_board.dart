// import 'dart:ffi';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:music_mate/screens/profile/profile.dart';
import '../../globalaccess/applib/applib.dart';
import '../profilepicture/profile_update.dart';

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
    const ProfileUpdate()
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
        extendBody: true,
        drawer: Drawer(
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/images/design_1.jpg').image,
                    fit: BoxFit.cover)),
            child: Container(
                color: Colors.black38,
                height: double.infinity,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal! * 5,
                      SizeConfig.blockSizeVertical! * 0,
                      SizeConfig.blockSizeHorizontal! * 0,
                      SizeConfig.blockSizeVertical! * 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 15,
                      ),
                      Text(
                        'Create',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Text(
                        'Listen',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Text(
                        'profile',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Text(
                        'About Us',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Text(
                        'Sign Out',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'Nothing Presents',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeVertical! * 3,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      )
                    ],
                  ),
                )),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: SizeConfig.blockSizeVertical! * 12,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(20))),
          centerTitle: true,
          backgroundColor: const Color(0xFF635985),
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
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical! * 1,
              horizontal: SizeConfig.blockSizeHorizontal! * 1,
            ),
            padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical! * 0.3,
              horizontal: SizeConfig.blockSizeHorizontal! * 2.7,
            ),
            height: SizeConfig.blockSizeVertical! * 9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              border: Border.all(
                color: const Color(0xFF18122B),
              ),
            ),
            child: FlashyTabBar(
              animationDuration: const Duration(milliseconds: 300),
              animationCurve: Curves.linear,
              // backgroundColor: Colors.transparent,
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
                    icon: const Icon(Icons.home, color: Color(0xFF18122B)),
                    title: Text(
                      'Create',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical! * 2.2,
                      ),
                    )),
                FlashyTabBarItem(
                    icon: const Icon(Icons.music_note_rounded,
                        color: Color(0xFF18122B)),
                    title: Text(
                      'Listen',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical! * 2.2,
                      ),
                    )),
                FlashyTabBarItem(
                    icon: const Icon(Icons.person_sharp, color: Color(0xFF18122B)),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical! * 2.2,
                      ),
                    ))
              ],
            ),
          ),
        ),
      );
    });
  }
}
