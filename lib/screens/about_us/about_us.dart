import 'package:flutter/material.dart';

import '../../globalaccess/applib/sizer.dart';

class about extends StatefulWidget {
  const about({super.key});

  @override
  State<about> createState() => _aboutState();
}

class _aboutState extends State<about> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Column(children: [
          SingleChildScrollView(
              child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            height: SizeConfig.blockSizeVertical! * 10,
            width: SizeConfig.blockSizeHorizontal! * 50,
            child: Column(children: [
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 2,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.purple)),
                height: SizeConfig.blockSizeVertical! * 10,
                width: SizeConfig.blockSizeHorizontal! * 10,
                child: Image.asset('assets/arr_wp.jpg'),
              ),
            ]),
          ))
        ]),
      );
    });
  }
}
