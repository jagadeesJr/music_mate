import 'dart:async';

import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class CreateRoom extends StatefulWidget {
  const CreateRoom({super.key});

  @override
  State<CreateRoom> createState() => _CreateRoomState();
}

class _CreateRoomState extends State<CreateRoom> {
  int membersCount = 0;
  bool checkVal = false;
  late Timer _timer;
  String selectedAudio="";


   void openAudioPicker() async {
     FilePickerResult? result = await FilePicker.platform.pickFiles(type:FileType.audio);
  if (result == null) {
    print("No file selected");
  } else {
    selectedAudio = result.files.single.name;
    print(result.files.single.name);
  }
  if(mounted){
    setState(() {
      
    });
  }
   }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                  Text(
                    "Room Name:",
                    style: TextStyle(
                        fontFamily: "Olimpos_bold",
                        fontSize: SizeConfig.blockSizeVertical! * 2.6),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  TextFormField(
                    style: TextStyle(
                        fontFamily: "Olimpos_light",
                        fontSize: SizeConfig.blockSizeVertical! * 2.6),
                    decoration: const InputDecoration(
                        hintText: 'Team Velox',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 1,
                                color: Color(0xFF635985),
                                style: BorderStyle.solid),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)))),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  CheckboxListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      title: Text(
                        "Vibe Alone",
                        style: TextStyle(
                            fontFamily: "Olimpos_bold",
                            fontSize: SizeConfig.blockSizeVertical! * 2.6),
                      ),
                      value: checkVal,
                      onChanged: (val) {
                        setState(() {
                          checkVal = val!;
                        });
                      }),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Members Count",
                        style: TextStyle(
                            fontFamily: "Olimpos_bold",
                            fontSize: SizeConfig.blockSizeVertical! * 2.6),
                      ),
                      Row(
                        children: [
                          Container(
                            height: SizeConfig.blockSizeVertical! * 5,
                            width: SizeConfig.blockSizeHorizontal! * 10,
                            decoration:  BoxDecoration(
                                color: const Color(0xFF18122B).withOpacity(0.9),
                                 shape: BoxShape.circle),
                            child: Center(
                              child: Text(
                                membersCount.toString(),
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: "Olimpos_bold",
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2.6),
                              ),
                            ),
                          ),
                          SizedBox(width: SizeConfig.blockSizeHorizontal! * 8),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (membersCount >= 1) {
                              membersCount = membersCount - 1;
                            }
                          });
                        },
                        onTapDown: (TapDownDetails details) {
                          _timer = Timer.periodic(
                              const Duration(milliseconds: 100), (t) {
                            setState(() {
                              if (membersCount >= 1) {
                                membersCount = membersCount - 1;
                              }
                            });
                          });
                        },
                        onTapUp: (TapUpDetails details) {
                          _timer.cancel();
                        },
                        onTapCancel: () {
                          _timer.cancel();
                        },
                        child: Container(
                          height: SizeConfig.blockSizeVertical! * 5,
                          width: SizeConfig.blockSizeHorizontal! * 10,
                          decoration:  BoxDecoration(
                              color: const Color(0xFF18122B).withOpacity(0.9),
                               shape: BoxShape.circle),
                          child: const Center(
                              child: Icon(
                            Icons.remove,
                            color: Colors.white,
                          )),
                        ),
                      ),
                      SizedBox(width: SizeConfig.blockSizeHorizontal! * 6),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            if (membersCount <= 99) {
                              membersCount = membersCount + 1;
                            }
                          });
                        },
                        onTapDown: (TapDownDetails details) {
                          _timer = Timer.periodic(
                              const Duration(milliseconds: 100), (t) {
                            setState(() {
                              if (membersCount <= 99) membersCount++;
                            });
                          });
                        },
                        onTapUp: (TapUpDetails details) {
                          _timer.cancel();
                        },
                        onTapCancel: () {
                          _timer.cancel();
                        },
                        child: Container(
                          height: SizeConfig.blockSizeVertical! * 5,
                          width: SizeConfig.blockSizeHorizontal! * 10,
                          decoration: BoxDecoration(
                              color: const Color(0xFF18122B).withOpacity(0.9),
                               shape: BoxShape.circle),
                          child: const Center(
                              child: Icon(
                            Icons.add,
                            color: Colors.white,
                          )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Select Song:",
                            style: TextStyle(
                                fontFamily: "Olimpos_bold",
                                fontSize: SizeConfig.blockSizeVertical! * 2.6),
                          ),
                          Container(
                            width:SizeConfig.blockSizeHorizontal! * 70,
                            child: Text(
                              selectedAudio,
                              style: TextStyle(
                                  fontFamily: "Olimpos_bold",
                                  fontSize: SizeConfig.blockSizeVertical! * 2),
                            ),
                          ),
                        ],
                      ),
                     InkWell(
                      onTap:(){
                        openAudioPicker();
                      },
                      child:Icon(Icons.file_copy,
                      color: const Color(0xFF18122B).withOpacity(0.9),))
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 5),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      onPressed: () {
                        
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(const Color(0xFF18122B).withOpacity(0.9),)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: SizeConfig.blockSizeHorizontal! * 25,
                            vertical: SizeConfig.blockSizeVertical! * 1.2),
                        child: Text('Activate',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 2.8)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
