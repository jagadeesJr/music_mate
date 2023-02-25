import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class PageViewerWidget extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String content;
  const PageViewerWidget(
      {super.key,
      required this.title,
      required this.imageUrl,
      required this.content});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: AssetImage(imageUrl))),
          child: Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(top: SizeConfig.blockSizeVertical! * 65),
                  child: Container(
                      color: Colors.black38,
                      child: Column(children: [
                        Text(
                          title,
                          style: TextStyle(
                              color:Colors.white,
                              fontSize: SizeConfig.blockSizeVertical! * 4,
                              fontFamily: "Olimpos_bold",
                              fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              top: SizeConfig.blockSizeVertical! * 2,
                              left: SizeConfig.blockSizeVertical! * 6,
                              right: SizeConfig.blockSizeVertical! * 6,
                              bottom:SizeConfig.blockSizeVertical! * 5),
                          child: Text(
                            content,
                            style: TextStyle(
                                fontFamily: "Olimpos_bold",
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 2.5),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ]))),
            ],
          ));
    });
  }
}
