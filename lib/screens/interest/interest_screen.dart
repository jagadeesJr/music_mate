import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal! * 5),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                Text(
                  "INTEREST",
                  style: TextStyle(
                      fontFamily: "Olimpos_bold",
                      fontSize: SizeConfig.blockSizeVertical! * 5),
                ),
                Row(children: [
                  Text("Select Your Favorite Singer",
                  style: TextStyle(
                      fontSize: SizeConfig.blockSizeVertical! * 2.2),)
                ],)
              ],
            ),
          ),
        ),
      );
    });
  }
}
