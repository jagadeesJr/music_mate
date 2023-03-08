import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {

  Future<bool> onBackButtonPressed() async {
    LocalStorage().storeData("string", "dashboard_index", "2");
                Navigator.pushNamed(
                  context,
                  "dashboard",
                );
    return false;
  }
  
  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return WillPopScope(
          onWillPop: onBackButtonPressed,
          child:Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                                  color: Colors.black,
                                  fontSize:
                                      SizeConfig.blockSizeHorizontal! * 7.5,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Find your music mate',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize:
                                        SizeConfig.blockSizeHorizontal! * 5)),
                          ],
                        )
                      ],),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 8),
              child: Text(
                'Username',
                style: TextStyle(
                    fontFamily: "Olimpos_light",
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.blockSizeVertical! * 2.6),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 1.5),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 6),
              height: SizeConfig.blockSizeVertical! * 6,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF635985)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 6),
                child: TextFormField(
                    decoration: InputDecoration(
                      
                  hintText: "Musicphile's name",
                )),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 8),
              child: Text(
                'Phone Number',
                style: TextStyle(
                  fontFamily: "Olimpos_light",
                  color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: SizeConfig.blockSizeVertical! * 2.6),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 1.5),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 6),
              height: SizeConfig.blockSizeVertical! * 6,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF635985)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 6),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: "+91 8495757820",
                )),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 8),
              child: Text(
                'Bio',
                style: TextStyle(
                color: Colors.black,
                    fontWeight: FontWeight.w600,
                    
                    fontSize: SizeConfig.blockSizeVertical! * 2.6),
              ),
            ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 1.5),
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 6),
              height: SizeConfig.blockSizeVertical! * 6,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFF635985)),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal! * 6),
                child: TextFormField(
                    decoration: InputDecoration(
                  hintText: "Who am I..?",
                )),
              ),
            ),

            // SizedBox(height: SizeConfig.blockSizeVertical! * 2),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: SizeConfig.blockSizeHorizontal! * 8),
            //   child: Text(
            //     'Phone number',
            //     style: TextStyle(
            //         fontFamily: "Olimpos_bold",
            //         fontSize: SizeConfig.blockSizeVertical! * 2.6),
            //   ),
            // ),
            // SizedBox(height: SizeConfig.blockSizeVertical! * 1.5),
            // Container(
            //   margin: EdgeInsets.symmetric(
            //       horizontal: SizeConfig.blockSizeHorizontal! * 6),
            //   height: SizeConfig.blockSizeVertical! * 6,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: const Color(0xFF635985)),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: SizeConfig.blockSizeHorizontal! * 10),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [

            //         Text(
            //           "+91 6381077758",
            //           style: TextStyle(
            //             fontSize: SizeConfig.blockSizeVertical! * 2.2,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // SizedBox(height: SizeConfig.blockSizeVertical! * 2),
            // Padding(
            //   padding: EdgeInsets.symmetric(
            //       horizontal: SizeConfig.blockSizeHorizontal! * 8),
            //   child: Text(
            //     'Bio',
            //     style: TextStyle(
            //         fontFamily: "Olimpos_bold",
            //         fontSize: SizeConfig.blockSizeVertical! * 2.6),
            //   ),
            // ),
            // SizedBox(height: SizeConfig.blockSizeVertical! * 1.5),
            // Container(
            //   margin: EdgeInsets.symmetric(
            //       horizontal: SizeConfig.blockSizeHorizontal! * 6),
            //   height: SizeConfig.blockSizeVertical! * 6,
            //   decoration: BoxDecoration(
            //     border: Border.all(color: const Color(0xFF635985)),
            //     borderRadius: BorderRadius.circular(10),
            //   ),
            //   child: Padding(
            //     padding: EdgeInsets.symmetric(
            //         horizontal: SizeConfig.blockSizeHorizontal! * 5),
            //     child: Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           "Who am I..?",
            //           style: TextStyle(
            //             fontSize: SizeConfig.blockSizeVertical! * 2.2,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            SizedBox(height: SizeConfig.blockSizeVertical! * 2.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'profile_screen');
                  },
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      gradient: LinearGradient(colors: <Color>[
                        Color(0xFF281e4a),
                        Color.fromARGB(255, 91, 72, 154)
                      ]),
                      // color: Color(0xFF281e4a),
                    ),
                    
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(15, 3, 15, 3),
                      child: Text(
                        "Save",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25 ,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      ));
  });
  }
}
