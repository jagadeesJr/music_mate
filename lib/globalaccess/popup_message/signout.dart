import 'package:flutter/material.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';
import '../applib/sizer.dart';

class Signoutpopup extends StatefulWidget {
  final String title;
  final String content;
  final String icon;
  const Signoutpopup(
      {super.key,
      required this.title,
      required this.content,
      required this.icon});

  @override
  State<Signoutpopup> createState() => _SignoutpopupState();
}

class _SignoutpopupState extends State<Signoutpopup> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://freepngimg.com/thumb/jazz/48347-5-musical-notation-symbol-image-png-image-high-quality.png'))),
        child: AlertDialog(
          backgroundColor: Colors.transparent,
          content: Container(
              height: SizeConfig.blockSizeVertical! * 20,
              padding: EdgeInsets.symmetric(
                  horizontal: SizeConfig.blockSizeHorizontal! * 3),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  gradient: const LinearGradient(
                      stops: [.5, .5],
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [Color(0xFF18122B), Color(0xFF635985)])),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            SizeConfig.blockSizeHorizontal! * 0, 0, 5, 0),
                        child: SizedBox(
                          child: Icon(
                              widget.icon == "logout"
                                  ? Icons.logout
                                  : Icons.delete,
                              size: SizeConfig.blockSizeVertical! * 3,
                              color: Color(0xFF635985)),
                          // Image(image: AssetImage('assets/icons/cancel.png'))
                        ),
                      ),
                      Text(
                        widget.title,
                        style: TextStyle(
                            color: Color.fromARGB(255, 214, 213, 213),
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical! * 3.5,
                            fontFamily: 'Olimpos_light'),
                      ),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 5,
                      )
                    ],
                  ),
                  Text(
                    widget.content,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color.fromARGB(255, 214, 213, 213),
                        fontWeight: FontWeight.w400,
                        fontSize: SizeConfig.blockSizeVertical! * 2.3,
                        fontFamily: 'Olimpos_light'),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
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
                          padding: EdgeInsets.all(
                              SizeConfig.safeBlockVertical! * 1.3),
                          child: const Text(
                            "NO",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SplashScreen(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7)),
                              // color: Color(0xFF281e4a),
                              gradient: LinearGradient(colors: <Color>[
                                Color(0xFF281e4a),
                                Color.fromARGB(255, 91, 72, 154)
                              ])),
                          padding: EdgeInsets.all(
                              SizeConfig.safeBlockVertical! * 1.3),
                          child: const Text(
                            "YES",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ),
      );
    });
  }
}
