import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class CarouselWidget extends StatefulWidget {
  final String item;
  const CarouselWidget({super.key, required this.item});

  @override
  State<CarouselWidget> createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  final GlobalKey<ScaffoldState> scaffoldKeyOne = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        key: scaffoldKeyOne,
        endDrawer: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
          ),
          child: Drawer(
              width: 50,
              elevation: 0,
              backgroundColor: const Color(0xFF635985),
              child: Column(
                children: [
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  const InkWell(
                      child: Icon(Icons.visibility, color: Colors.white)),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  const InkWell(child: Icon(Icons.edit, color: Colors.white)),
                  SizedBox(
                    height: SizeConfig.blockSizeVertical! * 2,
                  ),
                  const InkWell(child: Icon(Icons.delete, color: Colors.white))
                ],
              )),
        ),
        body: Container(
            decoration: BoxDecoration(
              color: Colors.black38.withOpacity(0.4),
              borderRadius: BorderRadius.circular(2),
            ),
            child: Container(
                margin: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical! * 1,
                    horizontal: SizeConfig.blockSizeHorizontal! * 3),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        opacity: 0.4,
                        image: Image.asset('assets/images/loading.gif').image,
                        fit: BoxFit.contain)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                            onTap: () {
                              scaffoldKeyOne.currentState!.openEndDrawer();
                            },
                            child: const Icon(Icons.view_stream_outlined,
                                color: Colors.white))
                      ],
                    ),
                    Text("Yuvean Shankar raja hits Yuvean Shankar raja hits",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 3)),
                    Text("Room ID : Captain001",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: SizeConfig.blockSizeVertical! * 2.3)),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                              width: SizeConfig.blockSizeHorizontal! * 8.2,
                              height: SizeConfig.blockSizeVertical! * 4,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color(0xFF635985)),
                                  borderRadius: BorderRadius.circular(100),
                                  image: const DecorationImage(
                                      fit: BoxFit.cover,
                                      image: AssetImage(
                                          "assets/images/coming_soon.gif"))),
                            ),
                            SizedBox(
                              width: SizeConfig.blockSizeHorizontal! * 2,
                            ),
                            Text("VickyBharathi",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2.2)),
                          ],
                        ),
                        Text("Sun,14 1998",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: SizeConfig.blockSizeVertical! * 2)),
                      ],
                    )
                  ],
                ))),
      );
    });
  }
}

class ContainerVerticalWidgets extends StatelessWidget {
  final String itemData;
  const ContainerVerticalWidgets({super.key, required this.itemData});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Container(
          margin: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical! * 1.2,
              horizontal: SizeConfig.blockSizeHorizontal! * 5),
          padding: EdgeInsets.symmetric(
              vertical: SizeConfig.blockSizeVertical! * 1.2,
              horizontal: SizeConfig.blockSizeHorizontal! * 5),
          height: SizeConfig.blockSizeVertical! * 18,
          decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  opacity: 1.4,
                  image: Image.asset('assets/images/loading.gif').image,
                  fit: BoxFit.contain)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {},
                      child: const Icon(Icons.my_library_music_rounded,
                          color: Colors.white))
                ],
              ),
              Text("Yuvean Shankar raja hits Yuvean Shankar raja hits",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.blockSizeVertical! * 3)),
              Text("Room ID : Captain002",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: SizeConfig.blockSizeVertical! * 2.3)),
              SizedBox(
                height: SizeConfig.blockSizeVertical! * 1,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 10,
                        height: SizeConfig.blockSizeVertical! * 4.5,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF635985)),
                            borderRadius: BorderRadius.circular(100),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/coming_soon.gif"))),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2,
                      ),
                      Text("VickyBharathi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: SizeConfig.blockSizeVertical! * 2)),
                    ],
                  ),
                  Text("Sun,14 1999",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: SizeConfig.blockSizeVertical! * 2)),
                ],
              )
            ],
          ));
    });
  }
}
