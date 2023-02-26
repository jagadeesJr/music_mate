import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Container(
          margin: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 5),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.blockSizeVertical! * 4),
              Text(
                "INTEREST",
                style: TextStyle(
                    fontFamily: "Olimpos_bold",
                    fontSize: SizeConfig.blockSizeVertical! * 5),
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 1),
              Row(
                children: [
                  Text(
                    "Select Your Favorite Singer",
                    style: TextStyle(
                        fontFamily: "Olimpos_bold",
                        fontSize: SizeConfig.blockSizeVertical! * 2.2),
                  )
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 2),
              Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4, childAspectRatio: 0.8),
                    itemCount: 60,
                    itemBuilder: (buildcontext, index) {
                      return Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal! * 3,
                                vertical: SizeConfig.blockSizeVertical! * 1),
                            margin: EdgeInsets.symmetric(
                                horizontal: SizeConfig.blockSizeHorizontal! * 1,
                                vertical: SizeConfig.blockSizeVertical! * 0.5),
                            height: SizeConfig.blockSizeVertical! * 10,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(
                                      "assets/images/coming_soon.gif")),
                              border: Border.all(
                                  color: const Color(0xFF635985),
                                  width: SizeConfig.blockSizeHorizontal! * 0.18,
                                  style: BorderStyle.solid),
                            ),
                          ),
                          Text("NAME",style: TextStyle(
                      fontSize: SizeConfig.blockSizeVertical! * 2))
                        ],
                      );
                    }),
              ),
            ],
          ),
        ),
      );
    });
  }
}
