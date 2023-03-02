import 'package:flutter/material.dart';
import '../../globalaccess/applib/applib.dart';

class ProfileImageUpdate extends StatefulWidget {
  const ProfileImageUpdate({super.key});

  @override
  State<ProfileImageUpdate> createState() => _ProfileImageUpdateState();
}

class _ProfileImageUpdateState extends State<ProfileImageUpdate> {
  List singer = [
    {"image": "assets/images/u1.jpg", "name": "Yuvan Shankar Raja"},
    {"image": "assets/images/u1.jpg", "name": "Raja"}
  ];
  int val = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
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
                    "SELECT PROFILE",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Olimpos_bold",
                        fontSize: SizeConfig.blockSizeVertical! * 5),
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
                        style: TextStyle(
                            fontFamily: "Olimpos_light",
                            fontSize: SizeConfig.blockSizeVertical! * 2.5),
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
                  Row(
                    children: [
                      Text(
                        "Select Your Profile Image",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Olimpos_bold",
                            fontSize: SizeConfig.blockSizeVertical! * 2.2),
                      )
                    ],
                  ),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                  GridView.builder(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4, childAspectRatio: 0.8),
                      itemCount: singer.length,
                      itemBuilder: (buildcontext, index) {
                        return profileImageArea(singer[index], index);
                      }),
                  SizedBox(height: SizeConfig.blockSizeVertical! * 2),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () async {
            String screenType= await LocalStorage().getData('string', 'profile')??"";
            
            if (screenType.isEmpty) {
              if(mounted){
                  Navigator.pushNamed(context, "interest_screen");
              }
            } else {
              if(mounted){
               LocalStorage()
                                    .storeData("string", "dashboard_index", "2");
                                Navigator.pushNamed(
                                  context,
                                  "dashboard",
                                );
              }
            }
          },
          child: Icon(
            Icons.double_arrow_rounded,
            color: const Color(0xFF18122B).withOpacity(0.9),
          ),
        ),
      );
    });
  }

  Widget profileImageArea(data, index) {
    return InkWell(
      onTap: () {
        // Navigator.pushNamed(context, "interest_screen");
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal! * 3,
                vertical: SizeConfig.blockSizeVertical! * 1),
            height: SizeConfig.blockSizeVertical! * 9,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(data["image"].toString())),
              border: Border.all(
                  color: const Color(0xFF635985),
                  width: SizeConfig.blockSizeHorizontal! * 0.18,
                  style: BorderStyle.solid),
            ),
          ),
          SizedBox(height: SizeConfig.blockSizeVertical! * 0.2),
          Text(
            data["name"].toString(),
            style: TextStyle(
                color: Colors.white,
                fontSize: SizeConfig.blockSizeVertical! * 1.3),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget profileSelectArea(image) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal! * 3,
          vertical: SizeConfig.blockSizeVertical! * 1),
      height: SizeConfig.blockSizeVertical! * 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
        border: Border.all(
            color: const Color(0xFF635985),
            width: SizeConfig.blockSizeHorizontal! * 0.18,
            style: BorderStyle.solid),
      ),
    );
  }
}
