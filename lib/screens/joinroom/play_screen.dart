import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';
import 'package:music_mate/main.dart';

import '../../globalaccess/applib/sizer.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

Future<bool> onBackButtonPressed() async {
  return false;
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: onBackButtonPressed,
      child: Scaffold(
          extendBody: true,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/background.png')),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical! * 6),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: SizeConfig.blockSizeVertical! * 8,
                        width: SizeConfig.blockSizeHorizontal! * 9.5,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 2.0,
                            )
                          ],
                        ),
                        child: IconButton(onPressed: (){
                          Navigator.pushNamed(context, "dashboard");
                        }, icon: Icon(Icons.keyboard_return, size: SizeConfig.blockSizeVertical! * 3,))
                        ),
                    Text(
                      'Room ID',
                      style: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical! * 4,
                      ),
                    ),
                     PopupMenuButton(itemBuilder: (context) => [
                    const PopupMenuItem(child: Text('Deactivate Room'),
                    value: 1,),
                    const PopupMenuItem(child: Text('Leave Room'),
                    value: 2,)
                  ],
                  onSelected: (value) {
                if (value == 1) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const JoinRoomWidget()));
                } else if (value == 2) {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const JoinRoomWidget()));
                }
              },)
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 9),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: ProgressBar(
                    barCapShape: BarCapShape.square,
                    progress: Duration(milliseconds: 1000),
                    total: Duration(milliseconds: 50000),
                    progressBarColor: Colors.indigo,
                    baseBarColor: Colors.grey.withOpacity(0.20),
                    bufferedBarColor: Colors.red.withOpacity(0.20),
                    thumbColor: Colors.deepPurple[300],
                    barHeight: 10.0,
                    thumbRadius: 4.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.play_circle_outlined,
                          size: SizeConfig.blockSizeVertical! * 4,
                          color: Colors.deepPurple[300],
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.pause_circle_outline_outlined,
                          size: SizeConfig.blockSizeVertical! * 4,
                          color: Colors.deepPurple[300],
                        )),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                Text(
                  'Yuvan Shankar Raja Hits',
                  style:
                      TextStyle(fontSize: SizeConfig.blockSizeVertical! * 3.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Vignesh',
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical! * 3),
                    ),
                    Text(
                      'Sun, 5, 1999',
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical! * 2),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),
                  child: Container(
                      height: SizeConfig.blockSizeVertical! * 46,
                      width: SizeConfig.blockSizeHorizontal! * 100,
                      padding: const EdgeInsets.symmetric(horizontal: 2,vertical: 5),
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.white,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 2.0,
                          )
                        ],
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                         children: [
                            // Column(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            //   children: [
                            //     SizedBox(height: SizeConfig.blockSizeVertical! * 9),
                            //     Icon(Icons.message_outlined, 
                            //     size: SizeConfig.blockSizeVertical! * 15,
                            //     color: Colors.deepPurple[200],),
                            //   Text(
                            //       'Chat now',
                            //       style: TextStyle(
                            //           fontSize: SizeConfig.blockSizeVertical! * 5,
                            //           color: Colors.deepPurple[200]),
                            //     )
                            //   ],
                            // ),
                            ListView.builder(
                              itemCount: 4,
                              physics: ScrollPhysics(),
                              shrinkWrap: true,
                              itemBuilder: (buildcontext, index) {
                                return contentArea();
                              },
                            ),
                            
                          ],
                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeVertical! * 2.7,
              ),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  hintText: 'Enter Text',
                  hintStyle: TextStyle(color: Colors.deepPurple),
                  fillColor: Colors.transparent,
                  errorStyle: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical! * 2,
                  ),
                  suffixIcon: const Icon(
                    Icons.send,
                    color: Colors.deepPurple,
                  ),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: SizeConfig.blockSizeVertical! * 0.05,
                          color: Color(0xFFF3F4F8),
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: SizeConfig.blockSizeVertical! * 0.05,
                        color: Color.fromARGB(255, 130, 167, 243),
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  )),
            ),
          )),
    );
  }

  Widget contentArea() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: SizeConfig.blockSizeHorizontal! * 5,
                        height: SizeConfig.blockSizeVertical! * 3,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                            border: Border.all(color: const Color(0xFF635985)),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/coming_soon.gif"))),
                      ),
                      SizedBox(width:SizeConfig.blockSizeHorizontal! * 1),
                      Text('Jagadeesh', style: TextStyle(
                        color: Colors.black,
                        fontSize:  SizeConfig.blockSizeVertical! * 1.9
                      ),)
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: SizeConfig.blockSizeHorizontal! * 75,
                  child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',style: TextStyle(
                        color: Colors.black,
                        fontSize:  SizeConfig.blockSizeVertical! * 2),
                        maxLines: 20,
                        // textAlign: TextAlign.justify,
                        ),
                ),
                Text('12:00pm',style: TextStyle(
                        color: Colors.black,
                        fontSize:  SizeConfig.blockSizeVertical! * 1.5
                      ),)
              ],
            ),
            Divider(thickness: SizeConfig.blockSizeVertical! * 0.25,)
          ],
        ),
      ),
    );
  }
}
