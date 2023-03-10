import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:music_mate/screens/registration/registration_screen.dart';
import 'pageview.dart';
import '../../globalaccess/applib/applib.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  dynamic currentIndexPage = 0.0;
  dynamic pageLength = 4;
  PageController pageController = PageController();
  DateTime preBackPress = DateTime.now();

  Future<bool> onBackButtonPressed() async {
    final timeGap = DateTime.now().difference(preBackPress);
    final cantExit = timeGap >= const Duration(seconds: 2);
    preBackPress = DateTime.now();
    if (cantExit) {
      ScaffoldMessenger.of(context)
        ..hideCurrentSnackBar()
        ..showSnackBar(toasterMessage(
            "Press back again to exit.", "assets/icons/warning.png"));
      return false;
    } else {
      SystemNavigator.pop();
      return true;
    }
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
                    PageViewerWidget(
                        title: "Music",
                        imageUrl: "assets/images/shreyaGoshal_01.jpg",
                        content:
                            "acts like a magic key, to which the most tightly closed heart opens."),
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
                            dotsCount: 4,
                            position: currentIndexPage,
                            decorator: const DotsDecorator(
                                color: Color(0xFF06283D),
                                activeColor: Colors.blue),
                          ),
                        ),
                      ]),
                ),
                if (currentIndexPage == 3.0) const GoWidget()
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
                      builder: (context) => const RegisterScreen(),
                    ),
                  );
                  LocalStorage()
                      .storeData("string", "walk_through", "completed");
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
                      color: Colors.white),
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
                          color: const Color(0xFF18122B).withOpacity(0.9),
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
