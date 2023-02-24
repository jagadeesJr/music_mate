import 'dart:convert';
import 'package:music_mate/global_access/applib/app_lib.dart';

class LocalStorage {
  // set data in locally
  storeData(String type, String variableName, dynamic val) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (type) {
      case "bool":
        bool data = val ?? false;
        prefs.setBool(variableName, data);
        break;
      case "string":
        String data = val ?? "";
        prefs.setString(variableName, data);
        break;
      case "list":
        List data = val ?? [];
        String enString = json.encode({"data": data});
        prefs.setString(variableName, enString);
        break;
    }
  }

  // get data from localStorage
  getData(String type, String variableName) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    switch (type) {
      case "bool":
        return prefs.getBool(variableName);

      case "string":
        return prefs.getString(variableName);

      case "list":
        final String? listString = prefs.getString(variableName);
        Map<String, dynamic> data = json.decode(listString!);
        return data['data'];
    }
  }

  clearData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
