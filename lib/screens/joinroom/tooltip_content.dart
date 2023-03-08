
import 'package:flutter/material.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';

import 'tooltip.dart';



  Widget contentArea(data) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                PopupMenuButton(
                  shape: const TooltipShape(),
                  position: PopupMenuPosition.under,
                  padding: EdgeInsets.only(top: -10),
                  color: Color(0xFFe3defd),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        child: Row(children: [
                      const Padding(
                        padding: const EdgeInsetsDirectional.only(end: 10),
                        child: Icon(
                          Icons.person,
                          color: Color.fromARGB(255, 3, 0, 6),
                        ),
                      ),
                      Text(
                        'Username',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical! * 2.5,
                            fontFamily: 'Olimpos_light'),
                      ),
                    ])),
                    PopupMenuItem(
                        child: Row(children: [
                      const Padding(
                        padding: const EdgeInsetsDirectional.only(end: 10),
                        child: Icon(
                          Icons.phone,
                          color: Color.fromARGB(255, 3, 0, 6),
                        ),
                      ),
                      Text(
                        '+91 6208786389',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical! * 2.5,
                            fontFamily: 'Olimpos_light'),
                      ),
                    ])),
                    PopupMenuItem(
                        child: Row(children: [
                      const Padding(
                        padding: const EdgeInsetsDirectional.only(end: 10),
                        child: Icon(
                          Icons.comment_bank,
                          color: Color.fromARGB(255, 3, 0, 6),
                        ),
                      ),
                      Text(
                        'Who am I..?',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontWeight: FontWeight.w600,
                            fontSize: SizeConfig.blockSizeVertical! * 2.5,
                            fontFamily: 'Olimpos_light'),
                      ),
                    ])),
                    PopupMenuItem(
                        child: Column(
                      children: [
                        Row(children: [
                          const Padding(
                            padding: const EdgeInsetsDirectional.only(end: 10),
                            child: Icon(
                              Icons.favorite_outline_rounded,
                              color: Color.fromARGB(255, 3, 0, 6),
                            ),
                          ),
                          Text(
                            'Intrest',
                            style: TextStyle(
                                color: Colors.deepPurple,
                                fontWeight: FontWeight.w600,
                                fontSize: SizeConfig.blockSizeVertical! * 2.5,
                                fontFamily: 'Olimpos_light'),
                          ),
                        ]),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 0.8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal! * 5,
                                  vertical: SizeConfig.blockSizeVertical! * 15),
                              height: SizeConfig.blockSizeVertical! * 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/u1.jpg')),
                                border: Border.all(
                                    color: const Color(0xFF635985),
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 0.18,
                                    style: BorderStyle.solid),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal! * 5,
                                  vertical: SizeConfig.blockSizeVertical! * 15),
                              height: SizeConfig.blockSizeVertical! * 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/u1.jpg')),
                                border: Border.all(
                                    color: const Color(0xFF635985),
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 0.18,
                                    style: BorderStyle.solid),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      SizeConfig.blockSizeHorizontal! * 5,
                                  vertical: SizeConfig.blockSizeVertical! * 15),
                              height: SizeConfig.blockSizeVertical! * 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: AssetImage('assets/images/u1.jpg')),
                                border: Border.all(
                                    color: const Color(0xFF635985),
                                    width:
                                        SizeConfig.blockSizeHorizontal! * 0.18,
                                    style: BorderStyle.solid),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
                  ],
                  child: Container(
                    width: SizeConfig.blockSizeHorizontal! * 5,
                    height: SizeConfig.blockSizeVertical! * 3,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: const Color(0xFF635985)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image:
                                AssetImage("assets/images/coming_soon.gif"))),
                  ),
                ),
                SizedBox(width: SizeConfig.blockSizeHorizontal! * 1),
                Text(
                  'Jagadeesh',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeVertical! * 1.9),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: SizeConfig.blockSizeHorizontal! * 75,
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: SizeConfig.blockSizeVertical! * 2),
                    maxLines: 20,
                  ),
                ),
                Text(
                  '12:00pm',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: SizeConfig.blockSizeVertical! * 1.5),
                )
              ],
            ),
            Divider(
              thickness: SizeConfig.blockSizeVertical! * 0.25,
            )
          ],
        ),
      ),
    );
  }