import 'package:flutter/material.dart';

import '../../globalaccess/applib/applib.dart';

Future<String> validateSelection(searchBar, selectSinger, context) async {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(toasterMessage(
        "Select any three favorite's.", "assets/icons/warning.png"));
  // Navigator.pushNamed(context, "dashboard");
  String screenType =
      await LocalStorage().getData('string', 'interestback') ?? "";

  if (screenType.isEmpty) {
    Navigator.pushNamed(context, "dashboard");
  } else {
    LocalStorage().storeData("string", "dashboard_index", "2");
    Navigator.pushNamed(
      context,
      "dashboard",
    );
  }

  return "true";
}
