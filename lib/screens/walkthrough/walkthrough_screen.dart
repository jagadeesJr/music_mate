import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../global_access/applib/sizer.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({super.key});

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  dynamic currentIndexPage = 0.0;
  dynamic pageLength = 3;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
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
            children: [
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/AR_image.jpg"))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical! * 10),
                        child: const Text(
                          "Take Video Courses",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical! * 5,
                            left: SizeConfig.blockSizeVertical! * 11,
                            right: SizeConfig.blockSizeVertical! * 11),
                        child: const Text(
                          "From cooking to coding and everything in between",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/AR_image.jpg"))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical! * 10),
                        child: const Text(
                          "Learn from the Best",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical! * 5,
                            left: SizeConfig.blockSizeVertical! * 10,
                            right: SizeConfig.blockSizeVertical! * 10),
                        child: const Text(
                          "Approchable expert- instructors, vetted by 35 millions learns",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
              Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/AR_image.jpg"))),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical! * 10),
                        child: const Text(
                          "Go at Your Own Pace",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.blockSizeVertical! * 5,
                            left: SizeConfig.blockSizeVertical! * 10,
                            right: SizeConfig.blockSizeVertical! * 10),
                        child: const Text(
                          "Life time access to purchased courses, anytime, anywhere",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical! * 5),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Center(
                child: DotsIndicator(
                  dotsCount: 3,
                  position: currentIndexPage,
                  decorator: const DotsDecorator(
                      color: Colors.grey, activeColor: Colors.white),
                ),
              ),
            ]),
          ),
          if (currentIndexPage == 2.0)
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                      onTap: () {},
                      child: Container(
                        height: SizeConfig.blockSizeVertical! * 5,
                        width: SizeConfig.blockSizeHorizontal! * 20,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            // shape: BoxShape.circle,
                             color: Colors.pinkAccent),
                        child: Row(
                          children: const [
                            Icon(Icons.music_note_outlined, color: Colors.white),
                            Text(
                              "  Go",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      )),
                )),
        ],
      ),
    );
  }
}
