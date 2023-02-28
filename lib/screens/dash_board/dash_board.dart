import 'package:flutter/material.dart';
import 'package:music_mate/screens/about_us/about_us.dart';
import '../../globalaccess/applib/applib.dart';
import '../createroom/create_room.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;

  List<Widget> tabItems = [
    const CreateRoom(),
    const JoinRoomWidget(),
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
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(width: SizeConfig.blockSizeVertical!*0.5,),
                     Container(
                      height: SizeConfig.blockSizeHorizontal!* 11,
                      width: SizeConfig.blockSizeVertical!*5,
                     decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/icons/dj.png').image,
                    fit: BoxFit.cover)),
                     ),
                     SizedBox(width: SizeConfig.blockSizeVertical!*2),
                      Text(
                        'Create',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3),
                      ),]),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2.5,
                      ),
                      Row(
                        children: [
                          SizedBox(width: SizeConfig.blockSizeVertical!*0.5,),
                          Container(
                      height: SizeConfig.blockSizeHorizontal!* 11,
                      width: SizeConfig.blockSizeVertical!*5,
                     decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/icons/smartphone.png').image,
                    fit: BoxFit.cover)),
                     ),
                     SizedBox(width: SizeConfig.blockSizeVertical!*2),
                          Text(
                            'Listen',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2.5,
                      ),
                      Row(
                        children: [
                          SizedBox(width: SizeConfig.blockSizeVertical!*1,),
                          Container(
                            
                      height: SizeConfig.blockSizeHorizontal!* 9,
                      width: SizeConfig.blockSizeVertical!*4,
                     decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/icons/user_2.png').image,
                    fit: BoxFit.cover),
                    ),
                     ),
                     SizedBox(width: SizeConfig.blockSizeVertical!*2),
                          Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 3),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),

                      
                      InkWell(
                        onTap: (() {
                          Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const aboutus()));
                        }),
                        child: Row(
                          children: [
                          
                            Container(
                        height: SizeConfig.blockSizeHorizontal!* 11,
                        width: SizeConfig.blockSizeVertical!*5,
                     decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/icons/about_us.png').image,
                    fit: BoxFit.cover)),
                    
                     ),
                     SizedBox(width: SizeConfig.blockSizeVertical!*2),
                            Text(
                              'About Us',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: SizeConfig.blockSizeVertical! * 3),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),
                      Row(
                        children: [
                          Container(
                      height: SizeConfig.blockSizeHorizontal!* 11,
                      width: SizeConfig.blockSizeVertical!*5,
                     decoration: BoxDecoration(
                image: DecorationImage(
                    image: Image.asset('assets/icons/log_out.png').image,
                    fit: BoxFit.cover)),
                     ),
                     SizedBox(width: SizeConfig.blockSizeVertical!*2),
                          Text(
                            'Sign Out',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 3),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            'From Nothing Presents',
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
      );
    });
  }
}
