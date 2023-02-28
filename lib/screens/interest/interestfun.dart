import 'package:flutter/material.dart';

import '../../globalaccess/applib/applib.dart';

String validateSelection(searchBar, selectSinger, context) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(toasterMessage(
        "Select any three favorite's.", "assets/icons/warning.png"));
  Navigator.pushNamed(context, "login_screen");
  return "true";
}
