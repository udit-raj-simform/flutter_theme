import 'package:flutter/material.dart';
import 'package:flutter_theme/themes/my_colors.dart';

class MyTheme {
  MyTheme._();

  static light<MyTheme>(BuildContext context) {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: MyColors.primary,
        onPrimary: MyColors.primary,
        secondary: MyColors.secondary,
        onSecondary: MyColors.secondary,
        error: MyColors.error,
        onError: MyColors.error,
        background: MyColors.background,
        onBackground: MyColors.background,
        surface: MyColors.foreground,
        onSurface: MyColors.foreground,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: MyColors.text,
          fontSize: 24.0,
        ),
        bodyMedium: TextStyle(
          color: MyColors.subtext,
          fontSize: 21.0,
        ),
        bodySmall: TextStyle(
          color: MyColors.subtext,
          fontSize: 18.0,
        ),
      ),
      iconTheme: const IconThemeData(
        color: MyColors.secondary,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(MyColors.secondary),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(color: MyColors.text),
      ),
    );
  }

  static dark<MyTheme>(BuildContext context) {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: MyColors.primaryContainer,
        onPrimary: MyColors.primaryContainer,
        secondary: MyColors.secondaryContainer,
        onSecondary: MyColors.secondaryContainer,
        error: MyColors.errorDark,
        onError: MyColors.errorDark,
        background: MyColors.backgroundDark,
        onBackground: MyColors.backgroundDark,
        surface: MyColors.foregroundDark,
        onSurface: MyColors.foregroundDark,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          color: MyColors.textDark,
          fontSize: 24.0,
        ),
        bodyMedium: TextStyle(
          color: MyColors.subtextDark,
          fontSize: 21.0,
        ),
        bodySmall: TextStyle(
          color: MyColors.subtextDark,
          fontSize: 18.0,
        ),
      ),
      iconTheme: const IconThemeData(
        color: MyColors.secondaryContainer,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
          backgroundColor:
              MaterialStateProperty.all(MyColors.secondaryContainer),
        ),
      ),
      inputDecorationTheme: const InputDecorationTheme(
        labelStyle: TextStyle(
          color: MyColors.textDark,
        ),
      ),
    );
  }
}
