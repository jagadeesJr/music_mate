import 'package:flutter/material.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';

class Aboutus extends StatefulWidget {
  const Aboutus({super.key});

  @override
  State<Aboutus> createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return Scaffold(
          appBar: AppBar(
            toolbarHeight: SizeConfig.blockSizeVertical! * 12,
            shape: const RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(20))),
            centerTitle: true,
            backgroundColor: const Color(0xFF635985),
            title: Text(
              'About Us',
              style: TextStyle(
                fontFamily: 'Olimpos_light',
                fontSize: SizeConfig.blockSizeVertical! * 3.5,
                color: Colors.white,
              ),
            ),
            leading: InkWell(
              onTap: (() {
                LocalStorage()
          .removeOneData("dashboard_index",);
                          Navigator.pushNamed(context,"dashboard",);
              }),
              child: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: SizeConfig.blockSizeVertical! * 3,
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 1,
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      SizeConfig.blockSizeHorizontal! * 5,
                      0,
                      SizeConfig.blockSizeHorizontal! * 5,
                      0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 1,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                image: Image.asset('assets/images/Vector_2.png')
                                    .image,
                                fit: BoxFit.cover)),
                        height: SizeConfig.blockSizeVertical! * 15,
                        width: SizeConfig.blockSizeHorizontal! * 30,
                      ),
                      Text(
                        'Music Mate:',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: SizeConfig.blockSizeVertical! * 3,
                            fontFamily: 'Olimpos_italic_light'),
                      ),
                      RichText(
                          text: TextSpan(
                              text:
                                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum',
                              style: TextStyle(
                                fontSize: SizeConfig.blockSizeVertical! * 2,
                                fontFamily: 'Olimpos_italic_light',
                                color: Colors.black,
                              ))),
                      SizedBox(
                        height: SizeConfig.blockSizeVertical! * 2,
                      ),
                      Text(
                        'Namba_Pasanga',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Olimpos_italic_light',
                          fontSize: SizeConfig.blockSizeVertical! * 3,
                        ),
                      )
                    ],
                  ),
                ),
                contentArea(
                  'assets/images/arr_wp.jpg',
                  'Name:Karthiga.S ',
                  'Email: papu@gmail.com',
                  'Phone No: 9876543210',
                  'Company: Macincode',
                  'Degree: Bsc(Cs)',
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                ),
                contentArea(
                  'assets/images/arr_wp.jpg',
                  'Name: Jadeeswran',
                  'Email: papu@gmail.com',
                  'Phone No: 9876543210',
                  'Company: Macincode',
                  'Degree: Bsc(Cs)',
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                ),
                contentArea(
                  'assets/images/arr_wp.jpg',
                  'Name: Ilaya Barathi',
                  'Email: papu@gmail.com',
                  'Phone No: 9876543210',
                  'Company: Macincode',
                  'Degree: Bsc(Cs)',
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                ),
                contentArea(
                  'assets/images/arr_wp.jpg',
                  'Name: Grija kumari',
                  'Email: papu@gmail.com',
                  'Phone No: 9876543210',
                  'Company: Macincode',
                  'Degree: Bsc(Cs)',
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                ),
                contentArea(
                  'assets/images/arr_wp.jpg',
                  'Name: vignesh.R ',
                  'Email: papu@gmail.com',
                  'Phone No: 9876543210',
                  'Company: Macincode',
                  'Degree: Bsc(Cs)',
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                ),
              ],
            ),
          ));
    });
  }

  Widget contentArea(image, name, mail, contNo, comName, degree, details) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: SizeConfig.blockSizeHorizontal! * 5,
          vertical: SizeConfig.blockSizeVertical! * 1),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.black)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 2,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeHorizontal! * 0,
                  0, SizeConfig.blockSizeHorizontal! * 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black),
                        image: DecorationImage(
                            image: Image.asset(image
                                    // 'assets/images/arr_wp.jpg'
                                    )
                                .image,
                            fit: BoxFit.cover)),
                    height: SizeConfig.blockSizeVertical! * 15,
                    width: SizeConfig.blockSizeHorizontal! * 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        // 'Name: Muruga',
                        style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical! * 3,
                        ),
                      ),
                      Text(
                        mail,
                        // 'Mail_Id: Mail@gmail.com',
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2),
                      ),
                      Text(
                        contNo,
                        // 'Cont_No: 9876543210',
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2),
                      ),
                      Text(
                        comName,
                        // 'Company name: Macincode',
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2),
                      ),
                      Text(
                        degree,
                        // 'Degree: Bsc(Cs)',
                        style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 2),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical! * 1,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(SizeConfig.blockSizeVertical! * 1, 0,
                  SizeConfig.blockSizeVertical! * 1, 0),
              child: Column(
                children: [
                  SingleChildScrollView(
                    child: RichText(
                      text: TextSpan(
                          text: details,
                          // 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: SizeConfig.blockSizeVertical! * 1.8,
                              fontFamily: 'Olimpos_italic_light')),
                    ),
                  )
                ],
              ),
            )
          ]),
    );
  }
}
