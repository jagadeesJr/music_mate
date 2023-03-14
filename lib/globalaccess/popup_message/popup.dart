import 'package:flutter/material.dart';
import '../applib/sizer.dart';

class Popup extends StatefulWidget {
  const Popup({super.key});

  @override
  State<Popup> createState() => _PopupState();
}

class _PopupState extends State<Popup> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return AlertDialog(
        backgroundColor: const Color(0xFF18122b),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      SizeConfig.blockSizeHorizontal! * 0, 0, 5, 0),
                  child: SizedBox(
                    child: Icon(Icons.music_off_rounded,
                        size: SizeConfig.blockSizeVertical! * 3,
                        color: Colors.red),
                    // Image(image: AssetImage('assets/icons/cancel.png'))
                  ),
                ),
                Text(
                  "Delete",
                  style: TextStyle(
                      color: Color.fromARGB(255, 214, 213, 213),
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.blockSizeVertical! * 3.5,
                      fontFamily: 'Olimpos_bold'),
                ),
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 5,
                )
              ],
            ),
            Text(
              "Do you want to delete this room..?",
              style: TextStyle(
                  color: Color.fromARGB(255, 214, 213, 213),
                  fontWeight: FontWeight.w400,
                  fontSize: SizeConfig.blockSizeVertical! * 2.3,
                  fontFamily: 'Olimpos_light'),
            ),
          ],
        ),
        actions: <Widget>[
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
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical! * 1.3),
              child: const Text(
                "CANCEL",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  // color: Color(0xFF281e4a),
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xFF281e4a),
                    Color.fromARGB(255, 91, 72, 154)
                  ])),
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical! * 1.3),
              child: const Text(
                "DELETE",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

class RatingWidget extends StatefulWidget {
  const RatingWidget({super.key});

  @override
  State<RatingWidget> createState() => _RatingWidgetState();
}

class _RatingWidgetState extends State<RatingWidget> {
  int rating = 0;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return AlertDialog(
        backgroundColor: const Color(0xFF18122b),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
           children: [
          Text(
            "Rate Us",
            style: TextStyle(
                color: const Color.fromARGB(255, 214, 213, 213),
                fontWeight: FontWeight.w400,
                fontSize: SizeConfig.blockSizeVertical! * 2.3,
                fontFamily: 'Olimpos_light'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    rating = 1;
                  });
                },
                child: Icon(Icons.star_rounded,
                    color: rating >= 1 ? Colors.yellow : Colors.white,
                    size: SizeConfig.safeBlockVertical! * 3),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    rating = 2;
                  });
                },
                child: Icon(Icons.star_rounded,
                    color: rating >= 2 ? Colors.yellow : Colors.white,
                    size: SizeConfig.safeBlockVertical! * 3),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    rating = 3;
                  });
                },
                child: Icon(Icons.star_rounded,
                    color: rating >= 3 ? Colors.yellow : Colors.white,
                    size: SizeConfig.safeBlockVertical! * 3),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    rating = 4;
                  });
                },
                child: Icon(Icons.star_rounded,
                    color: rating >= 4 ? Colors.yellow : Colors.white,
                    size: SizeConfig.safeBlockVertical! * 3),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    rating = 5;
                  });
                },
                child: Icon(Icons.star_rounded,
                    color: rating >= 5 ? Colors.yellow : Colors.white,
                    size: SizeConfig.safeBlockVertical! * 3),
              ),
            ],
          ),

          SizedBox(
                          height: SizeConfig.blockSizeHorizontal! * 3,
                        ),

            Container(
                            width: double.infinity,
                            height: SizeConfig.blockSizeVertical! * 5,
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal! *0,
                                vertical: SizeConfig.blockSizeVertical! * 0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(
                                    fontFamily: "Olimpos_light",
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2.5),
                                decoration:const InputDecoration(
                                    hintText: 'Enter your feedback...',
                                    border: InputBorder.none),
                              ),
                            ),
                          ),

                          
        ]),
        actions: <Widget>[
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
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical! * 1.3),
              child: const Text(
                "Cancel",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(7)),
                  // color: Color(0xFF281e4a),
                  gradient: LinearGradient(colors: <Color>[
                    Color(0xFF281e4a),
                    Color.fromARGB(255, 91, 72, 154)
                  ])),
              padding: EdgeInsets.all(SizeConfig.safeBlockVertical! * 1.3),
              child: const Text(
                "Rate Us",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
