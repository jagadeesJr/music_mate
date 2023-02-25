import 'package:flutter/material.dart';
import '../applib/applib.dart';

class NoInternet extends StatefulWidget {
  const NoInternet({super.key});

  @override
  State<NoInternet> createState() => _NoInternetState();
}

class _NoInternetState extends State<NoInternet> {
  @override
  void initState() {
    super.initState();
    checkInterNetConnection();
  }

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
              body: Container(
                  color: Colors.white,
                  height: double.infinity,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Image(
                          image: AssetImage("assets/images/coming_soon.gif")),
                      Text("No Internet Connection.",
                          style: TextStyle(
                            fontSize: SizeConfig.blockSizeVertical! * 3,
                          ))
                    ],
                  ))));
    });
  }
}

checkInterNetConnection() async{
  final connectivityResult = await(Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    return {"status": 0, "message": "Network Error"};
  }
}
