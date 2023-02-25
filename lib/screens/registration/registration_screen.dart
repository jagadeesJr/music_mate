import 'package:flutter/material.dart';

import '../../globalaccess/applib/sizer.dart';

class Musicreg extends StatefulWidget {
  const Musicreg({super.key});

  @override
  State<Musicreg> createState() => _MusicregState();
}

class _MusicregState extends State<Musicreg> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.b8f14a5d1579935ce2fed744b8f6766d?rik=SLcFii50HZpWxQ&riu=http%3a%2f%2favailableideas.com%2fwp-content%2fuploads%2f2016%2f02%2fPiano-Keys-Closeup-iPhone-6-Plus-HD-Wallpaper.jpg&ehk=Ys79MItl92vNRNtKmPOluKCXViXivZk8mIjm4r8mvEg%3d&risl=&pid=ImgRaw&r=0'))),
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xFF708581),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            SizeConfig.blockSizeHorizontal! * 0,
            SizeConfig.blockSizeVertical! * 1,
            SizeConfig.blockSizeHorizontal! * 0,
            SizeConfig.blockSizeVertical! * 0),
        child: Material(
          elevation: 70,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              // color: Colors.transparent
            ),
            height: double.infinity,
            // color: Color(0xFF225776),
            child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
            SizeConfig.blockSizeHorizontal! * 10,
            SizeConfig.blockSizeVertical! * 0,
            SizeConfig.blockSizeHorizontal! * 10,
            SizeConfig.blockSizeVertical! * 10),
                child: (Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Material(
                        color: Colors.transparent,
                        // elevation: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'NAME',
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF09111e),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        color: Colors.transparent,
                        // elevation: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'MOBILE NUMBER',
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF141c27),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        color: Colors.transparent,
                        // elevation: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'PASSWORD',
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF141c27),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Material(
                        color: Colors.transparent,
                        // elevation: 30,
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: 'CONFIRM PASSWORD',
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: const BorderSide(
                                    color: Color(0xFF141c27),
                                  ))),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Sign In',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                height: 3,
                              ),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                height: 3,
                              ),
                            ),
                          ),                       ],
                      )
                    ]))
                // Image(image: NetworkImage('https://thumbs.dreamstime.com/b/vector-sound-wave-headphones-equalizer-music-polygons-monochrome-waveform-background-you-can-use-club-radio-pub-party-71045178.jpg'))
                ),
          ),
        ),
      ),
    ));
  }
}
