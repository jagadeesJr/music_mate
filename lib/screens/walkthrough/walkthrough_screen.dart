
import 'package:flutter/material.dart';
import 'package:music_mate/screens/interest/interest_screen.dart';
import 'package:music_mate/screens/profile/profile.dart';
import 'pageview.dart';
import '../../globalaccess/applib/applib.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  dynamic currentIndexPage = 0.0;
  dynamic pageLength = 3;
  PageController pageController = PageController();


  
Future<bool> onBackButtonPressed() async {
    return false;
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return WillPopScope(
          onWillPop: onBackButtonPressed,
          child: Scaffold(
            body: Stack(
              children: [
                PageView(
                  controller: pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: ((value) {
                    setState(() {
                      currentIndexPage = value.toDouble();
                    });
                  }),
                  children: const [
                    PageViewerWidget(
                        title: "Music",
                        imageUrl: "assets/images/arr_wp.jpg",
                        content:
                            "is sound that has been organized by using rhythm, melody or harmony..."),
                    PageViewerWidget(
                        title: "Tunes",
                        imageUrl: "assets/images/u1_wp2.jpg",
                        content:
                            "are made of notes that go up or down or stay on the same pitch. Music often has rhythm."),
                    PageViewerWidget(
                        title: "Rhythm",
                        imageUrl: "assets/images/harrish_wp1.jpg",
                        content:
                            "is the way the musical sounds and silences are put together in a sequence."),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical! * 10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Center(
                          child: DotsIndicator(
                            dotsCount: 3,
                            position: currentIndexPage,
                            decorator: const DotsDecorator(
                                color: Color(0xFF06283D),
                                activeColor: Colors.blue),
                          ),
                        ),
                      ]),
                ),
                if (currentIndexPage == 2.0) const GoWidget()
              ],
            ),
          ));
    });
  }
}

class GoWidget extends StatelessWidget {
  const GoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Align(
          alignment: Alignment.bottomRight,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: SizeConfig.blockSizeVertical! * 3,
              right: SizeConfig.blockSizeHorizontal! * 3,
            ),
            child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InterestScreen()));
                  //     ScaffoldMessenger.of(context)
                  // ..hideCurrentSnackBar()
                  // ..showSnackBar(toasterMessage("Going to Start Page.","assets/images/go_image.gif"));
                },
                child: Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 2),
                  height: SizeConfig.blockSizeVertical! * 5,
                  width: SizeConfig.blockSizeHorizontal! * 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.pinkAccent),
                  child: Row(
                    children: [
                      Image(
                          height: SizeConfig.blockSizeVertical! * 5.5,
                          width: SizeConfig.blockSizeHorizontal! * 5.5,
                          image:
                              const AssetImage("assets/images/go_image.gif")),
                      Text(
                        " Go",
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical! * 3,
                          fontFamily: "Olimpos_bold",
                        ),
                      )
                    ],
                  ),
                )),
          ));
    });
  }
}
