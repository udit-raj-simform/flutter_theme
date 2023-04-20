import 'package:flutter/material.dart';
import 'package:flutter_theme/home.dart';
import 'package:flutter_theme/themes/my_theme.dart';
import 'package:flutter_theme/themes/theme_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeModel(),
      child: Consumer(
        builder:
            (BuildContext context, ThemeModel themeNotifier, Widget? child) =>
                MaterialApp(
          title: "Flutter Themes",
          theme: MyTheme.light(context),
          darkTheme: MyTheme.dark(context),
          // themeMode: Global.themeMode,
          themeMode: themeNotifier.isDark ? ThemeMode.light : ThemeMode.dark,
          debugShowCheckedModeBanner: false,
          home: const Home(),
        ),
      ),
    );
  }
}
