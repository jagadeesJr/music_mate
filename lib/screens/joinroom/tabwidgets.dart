import 'dart:ui';
import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class CarouselWidget extends StatefulWidget {
  final String item;
  const CarouselWidget({super.key, required this.item});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final GlobalKey<ScaffoldState> scaffoldKeyOne = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        key: scaffoldKeyOne,
        drawerScrimColor: Colors.black38,
        endDrawer: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
          child: Drawer(
              width: 50,
              elevation: 0,
              backgroundColor: const Color(0xFF635985),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  InkWell(
                      onTap: () async {
                        LocalStorage().removeOneData(
                          "dashboard_index",
                        );
                        Navigator.pushNamed(context, "play_screen");
                      },
                      child: const Icon(Icons.visibility, color: Colors.white)),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  InkWell(
                      onTap: () async {
                        LocalStorage().removeOneData(
                          "dashboard_index",
                        );
                        Navigator.pushNamed(context, "dashboard");
                      },
                      child: const Icon(Icons.edit, color: Colors.white)),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  InkWell(
                      onTap: () async {
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return const Center(
                                child: Popup(),
                              );
                            });
                      },
                      child: const Icon(Icons.delete, color: Colors.white))
                ],
              )),
        ),
        body: Container(
            decoration: BoxDecoration(
              //  color: Colors.indigo.withOpacity(0.1),
              image: DecorationImage(
                  image: Image.asset('assets/images/loading.gif').image,
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(2),
              color: const Color.fromARGB(255, 252, 251, 251),
              gradient: const LinearGradient(
                  stops: [.5, .5],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Color(0xFF18122B), Color(0xFF635985)]),
              boxShadow: const [
                BoxShadow(
                  blurRadius: 11,
                  color: Color.fromARGB(199, 200, 200, 200),
                  offset: Offset(0, 3),
                )
              ],
            ),
            child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                child: Container(
                    margin: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical! * 0,
                        horizontal: SizeConfig.blockSizeHorizontal! * 3),
                    decoration: const BoxDecoration(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                                onTap: () {
                                  scaffoldKeyOne.currentState!.openEndDrawer();
                                },
                                child: const Icon(Icons.more_horiz,
                                    color: Colors.white))
                          ],
                        ),
                        Text(
                            "Yuvean Shankar raja hits Yuvean Shankar raja hits",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 3)),
                        Text("Room ID : Captain001",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 2.3)),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  width: SizeConfig.blockSizeHorizontal! * 8.2,
                                  height: SizeConfig.blockSizeVertical! * 4,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: const Color(0xFF635985)),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              "assets/images/coming_soon.gif"))),
                                ),
                                SizedBox(
                                  width: SizeConfig.blockSizeHorizontal! * 2,
                                ),
                                Text("Vicky",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            SizeConfig.blockSizeVertical! *
                                                2.2)),
                              ],
                            ),
                            Text("Sun,14 1998",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2)),
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.chair_outlined,
                                color: Colors.white70),
                            SizedBox(
                                width: SizeConfig.blockSizeHorizontal! * 2),
                            Text("2 Seats are available",
                                style: TextStyle(
                                    color: Colors.white70,
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2.3)),
                          ],
                        )
                      ],
                    )))),
      );
    });
  }
}

class ContainerVerticalWidgets extends StatelessWidget {
  final String itemData;
  final int index;
  const ContainerVerticalWidgets({super.key, required this.itemData,required this.index});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical! * 1.2,
              horizontal: SizeConfig.blockSizeHorizontal! * 5),
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical! * 1.2,
              horizontal: SizeConfig.blockSizeHorizontal! * 5),
          height: SizeConfig.blockSizeVertical! * 25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 252, 251, 251),
            borderRadius: BorderRadius.circular(5),
            gradient: const LinearGradient(
                stops: [.5, .5],
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Color(0xFF18122B), Color(0xFF635985)]),
            boxShadow: const [
              BoxShadow(
                blurRadius: 11,
                color: Color.fromARGB(199, 200, 200, 200),
                offset: Offset(0, 3),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.my_library_music_rounded,
                          color: Colors.white))
                ],
              ),
              Text("Yuvean Shankar raja hits Yuvean Shankar raja hits",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeVertical! * 3,
                      color: Colors.white)),
              Text("Room ID : Captain002",
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeVertical! * 2.3,
                      color: Colors.white)),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 10,
                        height: SizeConfig.blockSizeVertical! * 4.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF635985)),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/coming_soon.gif"))),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2,
                      ),
                      Text("Vicky",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeVertical! * 2)),
                    ],
                  ),
                  Text("Sun,14 1999",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeVertical! * 2)),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    SizeConfig.blockSizeHorizontal! * 0,
                    SizeConfig.blockSizeVertical! * 2,
                    0,
                    0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.chair_sharp, color: Colors.white38),
                        SizedBox(width: SizeConfig.blockSizeHorizontal! * 2),
                        Text("Seats are full",
                            style: TextStyle(
                                color: Colors.white38,
                                fontSize: SizeConfig.blockSizeVertical! * 2.3)),
                      ],
                    ),
                    index==1?ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Colors.red.withOpacity(0.5),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                SizeConfig.blockSizeHorizontal! * 0, 0, 8, 0),
                            child: Icon(
                              Icons.headset_off_outlined,
                              color: Colors.red,
                              size: SizeConfig.blockSizeVertical! * 2.3,
                            ),
                          ),
                          Text(
                            'Full',
                            style: TextStyle(
                              color: Colors.red.withOpacity(0.9),
                              fontFamily: "Olimpos_bold",
                              fontSize: SizeConfig.blockSizeVertical! * 2.3,
                            ),
                          ),
                        ],
                      ),
                    ):  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor:Colors.green.withOpacity(0.5),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)))),
                      onPressed: () {
                        LocalStorage().removeOneData(
                          "dashboard_index",
                        );
                        Navigator.pushNamed(context, "play_screen");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                SizeConfig.blockSizeHorizontal! * 0, 0, 8, 0),
                            child: Icon(
                              Icons.music_note_outlined,
                              color:Colors.green,
                              size: SizeConfig.blockSizeVertical! * 2.3,
                            ),
                          ),
                          Text(
                            'Join now',
                            style: TextStyle(
                              color: Colors.green.withOpacity(0.8),
                              fontSize: SizeConfig.blockSizeVertical! * 2.3,
                              fontFamily: "Olimpos_bold",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
