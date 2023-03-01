import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';


  toasterMessage(msg,imgUrl) {
    final snackBar = SnackBar(
        elevation: 1,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black38,
        content: SizedBox(
          child: Row(children: [
             SizedBox(
              height: SizeConfig.blockSizeVertical! * 3.5,
              child: Image(image: AssetImage(imgUrl)) ),
             SizedBox(
              width: SizeConfig.blockSizeHorizontal! * 5,
            ),
            Text(
              msg,
              style: TextStyle(
                fontFamily: "Olimpos_light",
              fontSize:SizeConfig.blockSizeVertical! * 1.6,
              ),
            ),
          ]),
        ));
    return snackBar;
  }

