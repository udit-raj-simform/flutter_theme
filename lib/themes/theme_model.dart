import 'package:flutter/cupertino.dart';
import 'package:flutter_theme/themes/theme_preferences.dart';

class ThemeModel extends ChangeNotifier {
  bool _isDark = false;
  ThemePreferences _themePreferences = ThemePreferences();

  bool get isDark => _isDark;

  ThemeModel() {
    _isDark = false;
    _themePreferences = ThemePreferences();
    getPreferences();
  }

  getPreferences() async {
    _isDark = await _themePreferences.getTheme();
    notifyListeners();
  }

  set isDark(bool value) {
    _isDark = value;
    _themePreferences.setTheme(value);
    notifyListeners();
  }
}
