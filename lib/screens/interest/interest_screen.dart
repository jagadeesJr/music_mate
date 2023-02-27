import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';
import 'interestfun.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  String searchBar = "";
  List selectSinger = [];

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  stops: [.2, 1],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.black, Color(0xFF635985)])),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: SizeConfig.blockSizeVertical! * 4),
                  Text(
                    "INTEREST",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Olimpos_bold",
                        fontSize: SizeConfig.blockSizeVertical! * 5),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                  Row(
                    children: [
                      Text(
                        "Select Your Favorite's",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Olimpos_bold",
                            fontSize: SizeConfig.blockSizeVertical! * 2.2),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  Container(
                    width: double.infinity,
                    height: SizeConfig.blockSizeVertical! * 5,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            suffixIcon: InkWell(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                },
                                child: const Icon(Icons.clear)),
                            hintText: 'Search...',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  GridView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 0.7,
                          mainAxisSpacing: SizeConfig.blockSizeVertical! * 1,
                          crossAxisSpacing:
                              SizeConfig.blockSizeHorizontal! * 2.5),
                      itemCount: 60,
                      itemBuilder: (buildcontext, index) {
                        return interestArea(
                            "assets/images/u1.jpg", "Yuvan Shankar Raja");
                      }),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.indigo,
          onPressed: () {
            validateSelection(searchBar,selectSinger,context);
          },
          child: const Icon(Icons.double_arrow_rounded),
        ),
      );
    });
  }

  Widget interestArea(image, name) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: SizeConfig.blockSizeHorizontal! * 3,
              vertical: SizeConfig.blockSizeVertical! * 1),
          height: SizeConfig.blockSizeVertical! * 9,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            border: Border.all(
                color: const Color(0xFF635985),
                width: SizeConfig.blockSizeHorizontal! * 0.18,
                style: BorderStyle.solid),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 0.2),
        Text(
          name,
          style: TextStyle(
              color: Colors.white,
              fontSize: SizeConfig.blockSizeVertical! * 1.3),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
