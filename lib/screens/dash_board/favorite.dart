import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';
import '../joinroom/tabwidgets.dart';

class MyFavorites extends StatefulWidget {
  const MyFavorites({super.key});

  @override
  State<MyFavorites> createState() => _MyFavoritesState();
}

class _MyFavoritesState extends State<MyFavorites> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  bool showBackToTopButton = false;

  late ScrollController scrollController;

  // This function is triggered when the user presses the back-to-top button
  void scrollToTop() {
    scrollController.animateTo(0,
        duration: const Duration(seconds: 1), curve: Curves.decelerate);
  }

  Future<bool> onBackButtonPressed() async {
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const Dashboard(
            naviIndex: 1,
          ),
        ),
      );
    }

    return false;
  }

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          if (scrollController.offset >=
              MediaQuery.of(context).size.height * 0.36) {
            showBackToTopButton = true; // show the back-to-top button
          } else {
            showBackToTopButton = false; // hide the back-to-top button
          }
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return WillPopScope(
          onWillPop: onBackButtonPressed,
          child: Scaffold(
            body: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: SingleChildScrollView(
                    controller: scrollController,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: SizeConfig.blockSizeVertical! * 3.5,
                          ),
                          Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal! * 3,
                                  vertical: SizeConfig.blockSizeVertical! * 0),
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 252, 251, 251),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 16,
                                    color: Color.fromARGB(199, 200, 200, 200),
                                    offset: Offset(0, 3),
                                  )
                                ],
                              ),
                              child: IconButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Dashboard(
                                          naviIndex: 1,
                                        ),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.arrow_back_ios_new,
                                    size: SizeConfig.blockSizeVertical! * 3,
                                  ))),
                          Container(
                            width: double.infinity,
                            height: SizeConfig.blockSizeVertical! * 5,
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal! * 3,
                                vertical: SizeConfig.blockSizeVertical! * 4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                              child: TextFormField(
                                style: TextStyle(
                                    fontFamily: "Olimpos_light",
                                    fontSize:
                                        SizeConfig.blockSizeVertical! * 2.5),
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.search),
                                    suffixIcon: InkWell(
                                        onTap: () {
                                          FocusScope.of(context).unfocus();
                                        },
                                        child: const Icon(Icons.clear)),
                                    hintText: 'Search your Favorites...',
                                    border: InputBorder.none),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal:
                                    SizeConfig.blockSizeHorizontal! * 3),
                            child: Text(
                              "Search By ",
                              style: TextStyle(
                                  fontFamily: "Olimpos_bold",
                                  fontSize: SizeConfig.blockSizeVertical! * 3),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal! * 3),
                              child: Row(
                                children: [
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 2),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFF635985),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        child: Text(
                                          "Room Id",
                                          style: TextStyle(
                                              fontFamily: "Olimpos_light",
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  2),
                                        ),
                                      )),
                                  const SizedBox(width: 5),
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius:const BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        child: Text(
                                          "Room Name",
                                          style: TextStyle(
                                              fontFamily: "Olimpos_light",
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  2),
                                        ),
                                      )),
                                  const SizedBox(width: 5),
                                  InkWell(
                                      onTap: () {},
                                      child: Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5, vertical: 2),
                                        decoration: BoxDecoration(
                                          color: Colors.grey.withOpacity(0.5),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(5)),
                                        ),
                                        child: Text(
                                          "Musicophille Name",
                                          style: TextStyle(
                                              fontFamily: "Olimpos_light",
                                              color: Colors.white,
                                              fontSize: SizeConfig
                                                      .blockSizeVertical! *
                                                  2),
                                        ),
                                      ))
                                ],
                              )),
                          ListView.builder(
                              physics: const ScrollPhysics(),
                              itemCount: 6,
                              shrinkWrap: true,
                              itemBuilder: (buildContext, index) {
                                return ContainerVerticalWidgets(
                                    itemData: imgList[index], index: index);
                              }),
                        ]))),
            floatingActionButton: showBackToTopButton == false
                ? null
                : Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical! * 2),
                    child: FloatingActionButton(
                      backgroundColor: Colors.blue.withOpacity(0.6),
                      onPressed: () {
                        scrollToTop();
                      },
                      child: const Icon(Icons.arrow_upward_rounded),
                    )),
          ));
    });
  }
}
