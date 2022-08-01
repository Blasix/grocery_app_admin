import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor:
          //0A1931  // white yellow 0xFFFCF8EC
          isDarkTheme ? Colors.blueGrey[900] : Colors.blueGrey[50],
      primaryColor: isDarkTheme ? Colors.blue[900] : Colors.blue,
      colorScheme: ThemeData().colorScheme.copyWith(
            brightness: isDarkTheme ? Brightness.dark : Brightness.light,
          ),
      cardColor:
          isDarkTheme ? const Color.fromARGB(255, 32, 42, 47) : Colors.grey[50],
      canvasColor:
          isDarkTheme ? const Color.fromARGB(255, 32, 42, 47) : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
          colorScheme: isDarkTheme
              ? const ColorScheme.dark()
              : const ColorScheme.light()),
    );
  }
}
