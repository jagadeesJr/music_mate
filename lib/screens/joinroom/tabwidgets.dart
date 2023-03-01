// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:music_mate/globalaccess/popup_message/popup.dart';
import 'package:music_mate/screens/createroom/create_room.dart';
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
                        showDialog(
                            context: context,
                            barrierDismissible: true,
                            builder: (BuildContext context) {
                              return const Center(
                                child: Popup(),
                              );
                            });
                      },
                      child: Icon(Icons.visibility, color: Colors.white)),
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
                                child: CreateRoom(),
                              );
                            });
                      },
                      child: Icon(Icons.edit, color: Colors.white)),
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
                      child: Icon(Icons.delete, color: Colors.white))
                ],
              )),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.indigo.withOpacity(0.1),
              image: DecorationImage(
                  opacity: 0.4,
                  image: Image.asset('assets/images/loading.gif').image,
                  fit: BoxFit.contain),
              borderRadius: BorderRadius.circular(2),
            ),
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
                            child: const Icon(
                              Icons.more_horiz,
                            ))
                      ],
                    ),
                    Text("Yuvean Shankar raja hits Yuvean Shankar raja hits",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 3)),
                    Text("Room ID : Captain001",
                        style: TextStyle(
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
                                  border: Border.all(
                                      color: const Color(0xFF635985)),
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
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2.2)),
                          ],
                        ),
                        Text("Sun,14 1998",
                            style: TextStyle(
                                fontSize: SizeConfig.blockSizeVertical! * 2)),
                      ],
                    ),
                    Text("2 Seats are available",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: SizeConfig.blockSizeVertical! * 2.3)),
                  ],
                ))),
      );
    });
  }
}

class ContainerVerticalWidgets extends StatelessWidget {
  final String itemData;
  const ContainerVerticalWidgets({super.key, required this.itemData});

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
              color: Colors.indigo.withOpacity(0.1),
              borderRadius: BorderRadius.circular(10),
              // color: Color.fromARGB(255, 27, 28, 30),
              // boxShadow: [
              //   BoxShadow(
              //       color: Colors.indigo.withOpacity(0.05),
              //       blurRadius: 5,
              //       spreadRadius: 5)
              // ],
              image: DecorationImage(
                  opacity: 1.4,
                  image: Image.asset('assets/images/loading.gif').image,
                  fit: BoxFit.contain)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.my_library_music_rounded,
                      ))
                ],
              ),
              Text("Yuvean Shankar raja hits Yuvean Shankar raja hits",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontSize: SizeConfig.blockSizeVertical! * 3)),
              Text("Room ID : Captain002",
                  style:
                      TextStyle(fontSize: SizeConfig.blockSizeVertical! * 2.3)),
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
                              fontSize: SizeConfig.blockSizeVertical! * 2)),
                    ],
                  ),
                  Text("Sun,14 1999",
                      style: TextStyle(
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
                    Text("No seats are available",
                        style: TextStyle(
                            color: Colors.redAccent,
                            fontSize: SizeConfig.blockSizeVertical! * 2.3)),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Color(0xFFd4e7cd),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(4)))),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                SizeConfig.blockSizeHorizontal! * 0,0,8,0),
                            child: Container(
                                child: Icon(
                              Icons.music_note_outlined,
                              color: Colors.green.withOpacity(0.8),
                              size: SizeConfig.blockSizeVertical! * 2.3,
                            )),
                          ),
                          Text(
                            'Join now',
                            style: TextStyle(
                              color: Colors.green.withOpacity(0.8),
                              fontFamily: 'Olimpos Bold',
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ));
    });
  }
}
