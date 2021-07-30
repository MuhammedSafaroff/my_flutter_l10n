import 'package:shared_preferences/shared_preferences.dart';

class LanguagePreferences {
  Future<String> getLocale() async {
    SharedPreferences _locale = await SharedPreferences.getInstance();
    return _locale.getString('language') ?? 'null';
  }

  Future<void> setLocale(String name) async {
    SharedPreferences _locale = await SharedPreferences.getInstance();
    _locale.setString('language', name);
  }
}
