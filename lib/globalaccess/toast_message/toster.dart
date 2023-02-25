import 'package:flutter/material.dart';


  toasterMessage(msg,imgUrl) {
    final snackBar = SnackBar(
        elevation: 1,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.black38,
        content: SizedBox(
          child: Row(children: [
             SizedBox(
              height: 30,
              child: Image(image: AssetImage(imgUrl)) ),
            const SizedBox(
              width: 10,
            ),
            Text(
              msg,
              style:const TextStyle(
              fontSize:16,
              ),
            ),
          ]),
        ));
    return snackBar;
  }

