import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_mate/globalaccess/popup_message/signout.dart';

import '../../globalaccess/applib/applib.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({
    super.key,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  List<Widget> tabItems = [
    const CreateRoom(),
    const JoinRoomWidget(),
    const ProfileUpdate(),
  ];

  @override
  void initState() {
    super.initState();
    getParsingIndex();
  }

  getParsingIndex() async {
    String indexString =
        await LocalStorage().getData("string", "dashboard_index") ?? "0";
    selectedIndex = int.parse(indexString);
    if (mounted) {
      setState(() {});
    }
    LocalStorage().removeOneData(
      "dashboard_index",
    );
  }

  DateTime preBackPress = DateTime.now();

  Future<bool> onBackButtonPressed() async {
    final timeGap = DateTime.now().difference(preBackPress);
    final cantExit = timeGap >= const Duration(seconds: 2);
    preBackPress = DateTime.now();
    if (cantExit) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(toasterMessage(
            "Press back again to exit.", "assets/icons/warning.png"));
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return WillPopScope(
          onWillPop: onBackButtonPressed,
          child: Scaffold(
            extendBody: true,
            drawer: Theme(
                data: Theme.of(context).copyWith(
                  canvasColor: Colors.transparent.withOpacity(0.5),
                ),
                child: Drawer(
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Image.asset('assets/images/design_1.jpg')
                                  .image,
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
                                  height: SizeConfig.blockSizeVertical! * 5,
                                ),

                                  Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Image.asset(
                                    'assets/images/Vector_2.png',
                                    height: SizeConfig.blockSizeVertical! * 10,
                                    width: SizeConfig.blockSizeHorizontal! * 15,
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: SizeConfig.blockSizeHorizontal! * 2,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Music Mate',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.blockSizeHorizontal! *
                                                7.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text( "Version 1.0.7", //'Find your music mate',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:
                                              SizeConfig.blockSizeHorizontal! *
                                                  5)),
                                ],
                              )
                            ],
                          ),

                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 5,
                                ),
                                InkWell(
                                    onTap: () {
                                      LocalStorage().removeOneData(
                                        "dashboard_index",
                                      );
                                      Navigator.pushNamed(
                                        context,
                                        "dashboard",
                                      );
                                    },
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            padding: const EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image: Image.asset(
                                                            'assets/icons/dj.png')
                                                        .image,
                                                    fit: BoxFit.cover)),
                                          ),
                                          SizedBox(
                                              width: SizeConfig
                                                      .blockSizeVertical! *
                                                  2.5),
                                          Text(
                                            'Create',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: SizeConfig
                                                        .blockSizeVertical! *
                                                    3),
                                          ),
                                        ])),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 2.5,
                                ),
                                InkWell(
                                    onTap: () {
                                      LocalStorage().storeData(
                                          "string", "dashboard_index", "1");
                                      Navigator.pushNamed(
                                        context,
                                        "dashboard",
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: Image.asset(
                                                          'assets/icons/smartphone.png')
                                                      .image,
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                            width:
                                                SizeConfig.blockSizeVertical! *
                                                    2.5),
                                        Text(
                                          'Listen',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  3),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 2.5,
                                ),
                                InkWell(
                                    onTap: () {
                                      LocalStorage().storeData(
                                          "string", "dashboard_index", "2");
                                      Navigator.pushNamed(
                                        context,
                                        "dashboard",
                                      );
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: Image.asset(
                                                        'assets/icons/user_2.png')
                                                    .image,
                                                fit: BoxFit.cover),
                                          ),
                                        ),
                                        SizedBox(
                                            width:
                                                SizeConfig.blockSizeVertical! *
                                                    2.5),
                                        Text(
                                          'Profile',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  3),
                                        ),
                                      ],
                                    )),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1.9,
                                ),
                                InkWell(
                                  onTap: (() {
                                    LocalStorage().removeOneData(
                                      "dashboard_index",
                                    );
                                    Navigator.pushNamed(
                                      context,
                                      "about_us",
                                    );
                                  }),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.all(18),
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: Image.asset(
                                                        'assets/icons/about_us.png')
                                                    .image,
                                                fit: BoxFit.cover)),
                                      ),
                                      SizedBox(
                                          width: SizeConfig.blockSizeVertical! *
                                              2),
                                      Text(
                                        'About Us',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize:
                                                SizeConfig.blockSizeVertical! *
                                                    3),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1.9,
                                ),
                                InkWell(
                                    onTap: () async {
                                      Navigator.pop(context);
                                      showDialog(
                                          context: context,
                                          barrierDismissible: true,
                                          builder: (BuildContext context) {
                                            return const Center(
                                              child: Signoutpopup(title:"Sign Out",content:"Do you want to sign out really..?",
                                              icon:"logout"),
                                            );
                                          });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(18),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: Image.asset(
                                                          'assets/icons/log_out.png')
                                                      .image,
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                            width:
                                                SizeConfig.blockSizeVertical! *
                                                    2),
                                        Text(
                                          'Sign Out',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  3),
                                        ),
                                      ],
                                    )),
                                   SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 1.9,
                                ),
                                InkWell(
                                    onTap: () async {
                                      Navigator.pop(context);
                                      showDialog(
                                        barrierColor:Colors.black38,
                                          context: context,
                                          barrierDismissible: true,
                                          builder: (BuildContext context) {
                                            return const Center(
                                              child: Signoutpopup(title:"Delete Account",
                                              content:"Do you want to delete your account permanently...?",
                                              icon:"delete"),
                                            );
                                          });
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: Image.asset(
                                                          'assets/icons/caution.png')
                                                      .image,
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                            width:
                                                SizeConfig.blockSizeVertical! *
                                                    2),
                                        Text(
                                          'Delete Account',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  3),
                                        ),
                                      ],
                                    )),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text(
                                      'From Nothing Presents',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.blockSizeVertical! * 3,
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
                    ))),
            appBar: AppBar(
              elevation: 0,
              toolbarHeight: SizeConfig.blockSizeVertical! * 12,
              shape: const RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20))),
              centerTitle: true,
              backgroundColor: const Color(0xFF18122B).withOpacity(0.9),
              title: Text(
                'Music Mate',
                style: TextStyle(
                  fontFamily: 'Olimpos_light',
                  fontSize: SizeConfig.blockSizeVertical! * 3.5,
                  color: Colors.white,
                ),
              ),
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 5,
                  ),
                  child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          "favorites",
                        );
                      },
                      child: Icon(Icons.favorite)),
                )
              ],
            ),
            body: Center(
              child: tabItems[selectedIndex],
            ),
            bottomNavigationBar: Container(
              margin: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical! * 1.5,
                horizontal: SizeConfig.blockSizeHorizontal! * 5,
              ),
              padding: EdgeInsets.symmetric(
                vertical: SizeConfig.blockSizeVertical! * 0.3,
                horizontal: SizeConfig.blockSizeHorizontal! * 2.7,
              ),
              height: SizeConfig.blockSizeVertical! * 9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(
                  color: const Color(0xFF18122B),
                ),
              ),
              child: FlashyTabBar(
                animationDuration: const Duration(milliseconds: 300),
                animationCurve: Curves.linear,
                selectedIndex: selectedIndex,
                iconSize: SizeConfig.blockSizeVertical! * 3,
                showElevation: false,
                onItemSelected: (value) {
                  setState(() {
                    selectedIndex = value;
                    LocalStorage().removeOneData(
                      "dashboard_index",
                    );
                  });
                },
                items: [
                  FlashyTabBarItem(
                      icon: Icon(
                        Icons.multitrack_audio_sharp,
                        color: const Color(0xFF18122B),
                        size: SizeConfig.blockSizeVertical! * 3.5,
                      ),
                      title: Text(
                        'Create',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeVertical! * 2.2,
                        ),
                      )),
                  FlashyTabBarItem(
                      icon: Icon(Icons.music_note_rounded,
                          color: const Color(0xFF18122B),
                          size: SizeConfig.blockSizeVertical! * 3.5),
                      title: Text(
                        'Listen',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeVertical! * 2.2,
                        ),
                      )),
                  FlashyTabBarItem(
                      icon: Icon(
                        Icons.person_rounded,
                        color: const Color(0xFF18122B),
                        size: SizeConfig.blockSizeVertical! * 3.5,
                      ),
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
          ));
    });
  }
}
