import 'package:shared_preferences/shared_preferences.dart';

// initialize shared preferences
Future<SharedPreferences> initSharedPreferences() async {
  return await SharedPreferences.getInstance();
}