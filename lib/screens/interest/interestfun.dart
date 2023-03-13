import 'package:flutter/material.dart';

import '../../globalaccess/applib/applib.dart';

Future<String> validateSelection(searchBar, selectSinger, context) async {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(toasterMessage(
        "Select any three favorite's.", "assets/icons/warning.png"));
  String screenType =
      await LocalStorage().getData('string', 'interestback') ?? "";

  if (screenType.isEmpty) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Dashboard(
          naviIndex: 0,
        ),
      ),
    );
  } else {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const Dashboard(
          naviIndex: 2,
        ),
      ),
    );
  }

  return "true";
}
