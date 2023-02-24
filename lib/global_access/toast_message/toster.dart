import 'package:flutter/material.dart';

class ToastMessge {
  toasterMessage() {
    final snackBar = SnackBar(

        /// need to set following properties for best effect of awesome_snackbar_content
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.fromARGB(95, 59, 53, 53),
        content: Container(
          child: Row(children: [
            Container(
              child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrV9jdrMTNLr5xKSlUBnfXVtlZA7ascomAgg&usqp=CAU'),
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Your joy is on the Way',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ]),
        ));
    return snackBar;
  }
}
