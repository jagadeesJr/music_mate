import 'package:flutter/material.dart';
import 'package:music_mate/globalaccess/applib/applib.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({super.key});

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

Future<bool> onBackButtonPressed() async {
  return false;
}

class _PlayScreenState extends State<PlayScreen> with TickerProviderStateMixin {
  late TabController tabController = TabController(vsync: this, length: 2);
  int _selectedTabbar = 0;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: onBackButtonPressed,
      child: Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset:true,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/background.png')),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.blockSizeVertical! * 3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                        height: SizeConfig.blockSizeVertical! * 8,
                        width: SizeConfig.blockSizeHorizontal! * 9.5,
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
                              LocalStorage()
                                  .storeData("string", "dashboard_index", "1");
                              Navigator.pushNamed(
                                context,
                                "dashboard",
                              );
                            },
                            icon: Icon(
                              Icons.keyboard_return,
                              size: SizeConfig.blockSizeVertical! * 3,
                            ))),
                    Text(
                      'Room ID',
                      style: TextStyle(
                        fontFamily: "Olimpos_bold",
                        fontSize: SizeConfig.blockSizeVertical! * 4,
                      ),
                    ),
                    Container(
                        height: SizeConfig.blockSizeVertical! * 8,
                        width: SizeConfig.blockSizeHorizontal! * 9.5,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 252, 251, 251),
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 16,
                              color: Color.fromARGB(199, 200, 200, 200),
                              offset: Offset(1, 3),
                            )
                          ],
                        ),
                        child: PopupMenuButton(
                          itemBuilder: (context) => const [
                            PopupMenuItem(
                              value: 1,
                              child: Text('Deactivate Room'),
                            ),
                            PopupMenuItem(
                              value: 2,
                              child: Text('Leave Room'),
                            )
                          ],
                          onSelected: (value) {
                            if (value == 1) {
                              LocalStorage()
                                  .storeData("string", "dashboard_index", "1");
                              Navigator.pushNamed(
                                context,
                                "dashboard",
                              );
                            } else if (value == 2) {
                              LocalStorage()
                                  .storeData("string", "dashboard_index", "1");
                              Navigator.pushNamed(
                                context,
                                "dashboard",
                              );
                            }
                          },
                        ))
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 7),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal! * 3),
                  child: ProgressBar(
                    barCapShape: BarCapShape.square,
                    progress: const Duration(milliseconds: 1000),
                    total: const Duration(milliseconds: 50000),
                    progressBarColor: Colors.indigo,
                    baseBarColor: Colors.grey.withOpacity(0.20),
                    bufferedBarColor: Colors.red.withOpacity(0.20),
                    thumbColor: Colors.deepPurple[300],
                    barHeight: 10.0,
                    thumbRadius: 4.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Tooltip(
                      message: 'Play Song',
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.play_circle_outlined,
                            size: SizeConfig.blockSizeVertical! * 4,
                            color: Colors.deepPurple[300],
                          )),
                    ),
                    SizedBox(width: SizeConfig.blockSizeVertical! * 2),
                    Tooltip(
                        message: 'Change Song',
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.change_circle_outlined,
                              size: SizeConfig.blockSizeVertical! * 4,
                              color: Colors.deepPurple[300],
                            ))),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                Text(
                  'Yuvan Shankar Raja Hit',
                  textAlign: TextAlign.center,
                  style:
                      TextStyle(fontSize: SizeConfig.blockSizeVertical! * 3.5),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Vignesh',
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical! * 3),
                    ),
                    Text(
                      'Sun, 5, 1999',
                      style: TextStyle(
                          fontSize: SizeConfig.blockSizeVertical! * 2),
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.blockSizeVertical! * 1),
                TabBar(
                  controller: tabController,
                  onTap: (index) {
                    setState(() {
                      _selectedTabbar = index;
                    });
                  },
                  labelColor: const Color(0xFF18122B),
                  unselectedLabelColor: Colors.black,
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: SizeConfig.blockSizeVertical! * 2),
                  indicatorColor: Colors.deepPurple[200],
                  indicatorWeight: SizeConfig.blockSizeHorizontal! * 0.5,
                  tabs: const [
                    Tab(
                      text: 'Chat',
                    ),
                    Tab(
                      text: 'Users',
                    ),
                  ],
                ),
                Builder(builder: (_) {
                  if (_selectedTabbar == 0) {
                    return tabBarOne(); // 1st tabView
                  } else {
                    return tabBarTwo(); // 2nd tabView
                  }
                }),
              ],
            ),
          ),
          bottomNavigationBar: Container(
            color: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: TextFormField(
              style: TextStyle(
                color: Colors.black,
                fontSize: SizeConfig.blockSizeVertical! * 2.7,
              ),
              textAlign: TextAlign.start,
              decoration: InputDecoration(
                  hintText: 'Enter Text',
                  hintStyle: const TextStyle(color: Colors.deepPurple),
                  fillColor: Colors.transparent,
                  errorStyle: TextStyle(
                    fontSize: SizeConfig.blockSizeVertical! * 2,
                  ),
                  suffixIcon: const Icon(
                    Icons.send,
                    color: Colors.deepPurple,
                  ),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          width: SizeConfig.blockSizeVertical! * 0.05,
                          color: const Color(0xFFF3F4F8),
                          style: BorderStyle.solid),
                      borderRadius: const BorderRadius.all(Radius.circular(6))),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: SizeConfig.blockSizeVertical! * 0.05,
                        color: const Color.fromARGB(255, 130, 167, 243),
                        style: BorderStyle.solid),
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                  )),
            ),
          )),
    );
  }

  Widget tabBarOne() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Container(
        height: SizeConfig.blockSizeVertical! * 46,
        width: SizeConfig.blockSizeHorizontal! * 100,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
            )
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: SizeConfig.blockSizeVertical! * 9),
                  Icon(
                    Icons.message_outlined,
                    size: SizeConfig.blockSizeVertical! * 15,
                    color: Colors.deepPurple[200],
                  ),
                  Text(
                    'Chat now',
                    style: TextStyle(
                        fontSize: SizeConfig.blockSizeVertical! * 5,
                        color: Colors.deepPurple[200]),
                  )
                ],
              ),
              // ListView.builder(
              //   itemCount: 4,
              //   physics: ScrollPhysics(),
              //   shrinkWrap: true,
              //   itemBuilder: (buildcontext, index) {
              //     return contentArea();
              //   },
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget tabBarTwo() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
      child: Container(
        height: SizeConfig.blockSizeVertical! * 46,
        width: SizeConfig.blockSizeHorizontal! * 100,
        padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5),
        margin: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              color: Colors.black,
              blurRadius: 2.0,
            )
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.chair_rounded,
                    color: Colors.red,
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2),
                  const Text("Inactive Users"),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Icon(
                    Icons.chair_rounded,
                    color: Colors.green,
                  ),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 4),
                  const Text("Active Users"),
                  SizedBox(width: SizeConfig.blockSizeHorizontal! * 2),
                ],
              ),
              SizedBox(height: SizeConfig.blockSizeVertical! * 4),
              Image(
                  height: SizeConfig.blockSizeVertical! * 12,
                  width: SizeConfig.blockSizeHorizontal! * 40,
                  image: const AssetImage("assets/icons/guitar_1.png")),
              SizedBox(height: SizeConfig.blockSizeVertical! * 4),
              GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      childAspectRatio: 1,
                      mainAxisSpacing: SizeConfig.blockSizeVertical! * 0.3,
                      crossAxisSpacing: SizeConfig.blockSizeHorizontal! * 1),
                  itemCount: 10,
                  itemBuilder: (buildcontext, index) {
                    return Tooltip(
                        message: "Girija Kumaari \n Active 4h ago",
                        child: Icon(Icons.chair_rounded,
                            color: index == 0
                                ? Colors.red
                                : index == 4
                                    ? Colors.red
                                    : index == 6
                                        ? Colors.red
                                        : index == 9
                                            ? Colors.red
                                            : Colors.green));
                  }),
            ],
          ),
        ),
      ),
    );
  }

  Widget contentArea() {
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
                Container(
                  width: SizeConfig.blockSizeHorizontal! * 5,
                  height: SizeConfig.blockSizeVertical! * 3,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: const Color(0xFF635985)),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/coming_soon.gif"))),
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
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
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
}
