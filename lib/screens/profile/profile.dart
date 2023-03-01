import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class ProfileUpdate extends StatefulWidget {
  const ProfileUpdate({super.key});

  @override
  State<ProfileUpdate> createState() => _ProfileUpdateState();
}

class _ProfileUpdateState extends State<ProfileUpdate> {
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
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: SizeConfig.blockSizeVertical! * 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/coming_soon.gif"))),
                  child: Padding(
                    padding: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical! * 1,
                      right: SizeConfig.blockSizeHorizontal! * 3,
                    ),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "profile_image_screen");
                        },
                        child: SizedBox(
                          width: SizeConfig.blockSizeHorizontal! * 8,
                          height: SizeConfig.blockSizeVertical! * 4,
                          child: Image.asset(
                            'assets/icons/edit_icon.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 8),
                  child: Text(
                    "Phone number:",
                    style: TextStyle(
                        fontFamily: "Olimpos_bold",
                        fontSize: SizeConfig.blockSizeVertical! * 2.6),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 6),
                  height: SizeConfig.blockSizeVertical! * 6,
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xFF635985)),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: SizeConfig.blockSizeHorizontal! * 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "+91 6381077758",
                          style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2.2,
                          ),
                        ),
                        InkWell(
                            onTap: () {},
                            child: Icon(Icons.mode_edit_rounded,
                                size: SizeConfig.blockSizeVertical! * 2.2)),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Interest:",
                        style: TextStyle(
                            fontFamily: "Olimpos_bold",
                            fontSize: SizeConfig.blockSizeVertical! * 2.6),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Icon(Icons.mode_edit_rounded,
                              size: SizeConfig.blockSizeVertical! * 2.2)),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 8),
                  height: SizeConfig.blockSizeVertical! * 12,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF635985)),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/coming_soon.gif"))),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF635985)),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/coming_soon.gif"))),
                      ),
                      Container(
                        width: SizeConfig.blockSizeHorizontal! * 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF635985)),
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/coming_soon.gif"))),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 15),
              ],
            ),
          ),
        ),
      );
    });
  }
}
