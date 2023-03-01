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
    return  AlertDialog(
                  title: const Text("Alert Dialog Box", style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 10,
                  ),),
                  content: const Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                      //  Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("OKAY"),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                      //  Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("DELETE"),
                      ),
                    ),
                  ],
                


    );
  });}
}