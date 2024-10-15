import 'package:shared_preferences/shared_preferences.dart';

class ShrHelper {
  static Future<void> LoggedIn() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setBool("loggedIn", true);
  }

  static Future<bool> GetStatus() async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    return shr.getBool("loggedIn") ?? false;
  }

  static Future<void> Signup(String mail, String password) async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setString("mail", mail);
    shr.setString("password", password);
  }

  static Future<bool> CheckData(String mail, String password) async {
    SharedPreferences shr = await SharedPreferences.getInstance();
    shr.setBool("signup", true);
    return shr.getString("mail") == mail &&
        shr.getString("password") == password;
  }
}
