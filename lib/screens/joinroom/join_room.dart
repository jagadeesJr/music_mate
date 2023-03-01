import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';
import 'tabwidgets.dart';

class JoinRoomWidget extends StatefulWidget {
  const JoinRoomWidget({super.key});

  @override
  State<JoinRoomWidget> createState() => _JoinRoomWidgetState();
}

class _JoinRoomWidgetState extends State<JoinRoomWidget> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          body: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 5,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(SizeConfig.blockSizeVertical! * 2),
                      child: Text(
                        "Rooms, That You Have Created",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeVertical! * 3,
                        ),
                      ),
                    ),
                    CarouselSlider(
                      options: CarouselOptions(
                          initialPage: 0,
                          aspectRatio: 10 / 5.5,
                          enableInfiniteScroll: false,
                          pageSnapping: true,
                          enlargeCenterPage: true,
                          enlargeStrategy: CenterPageEnlargeStrategy.scale),
                      items: imgList
                          .map((item) => CarouselWidget(item: item))
                          .toList(),
                    ),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 2,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.all(SizeConfig.blockSizeVertical! * 2),
                      child: Text(
                        "Rooms, For You",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: SizeConfig.blockSizeVertical! * 3,
                        ),
                      ),
                    ),
                    ListView.builder(
                        physics: const ScrollPhysics(),
                        itemCount: 3,
                        shrinkWrap: true,
                        itemBuilder: (buildContext, index) {
                          return ContainerVerticalWidgets(
                              itemData: imgList[index]);
                        }),
                    SizedBox(
                      height: SizeConfig.blockSizeVertical! * 10,
                    ),
                  ]))),
          floatingActionButton: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeVertical! * 2),
              child: FloatingActionButton(
                backgroundColor: Colors.blue.withOpacity(0.6),
                onPressed: () {},
                child: const Icon(Icons.search_outlined),
              )),
          floatingActionButtonLocation: FloatingActionButtonLocation.endTop);
    });
  }
}
