import 'package:ffuf_final_capstone/utilities/_export.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color mainContentColor = Color(0xFF000000);
  static const Color unselectedColor = Color(0xFFC4C4C4);
  static const Color subTitleColor = Color(0xA3191D26);
  static const Color textOnCardColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFFF5F5F5);
  static const Color passiveElementColor = Color(0xFFE0E0E0); // unselected app drawer and drop down underline
  static const Color passiveElementColor2 = Color(0xA3E0E0E0);
  static const Color textHintsColor = Color(0xFFB9B9B9);
  static const Color warningColor = Color(0xFFE14141);
  static const Color wartezeitColor = Color(0xFFFFB72B);
  static const Color pauseColor = Color(0xFF6788FF);
  static const Color selectionIndicatorColor = Color(0xFF8465FF);
  static const Color loginTextColor = Color(0xFF191D26);

  static final ThemeData theme = ThemeData(
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    appBarTheme: const AppBarTheme(
      color: Color(0xFFFFFFFF),
      iconTheme: IconThemeData(
        color: mainContentColor,
      ),
      elevation: 0,
      toolbarHeight: kAppBarHeight,
    ),
    backgroundColor: const Color(0xFFF5F5F5),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(
        // Main labels i.e. Mein Konto
        fontFamily: 'Roboto',
        color: mainContentColor,
        fontSize: 22,
        fontWeight: FontWeight.w500,
      ),
      bodyMedium: TextStyle(
        // Tab labels i.e. Meine Visitenkarte
        fontFamily: 'AllertaStencil',
        color: mainContentColor,
        fontSize: 17,
      ),
      titleMedium: TextStyle(
        // App drawer labels i.e. Meine Einsatze
        fontFamily: 'Roboto',
        color: mainContentColor,
        fontSize: 14,
        fontWeight: FontWeight.w500,
      ),
      labelLarge: TextStyle(
        // business card name
        fontFamily: 'Roboto',
        color: mainContentColor,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      labelSmall: TextStyle(
        // subtitle labels i.e. Email, Position, Address
        fontFamily: 'Roboto',
        color: subTitleColor,
        fontSize: 12,
      ),
      bodySmall: TextStyle(
        // login page footer buttons
        fontFamily: 'Mulish',
        color: mainContentColor,
        fontSize: 14,
        fontWeight: FontWeight.w600,
      ),
      labelMedium: TextStyle(
        // leaves overview
        fontFamily: 'Roboto',
        color: mainContentColor,
        fontSize: 14,
      ),
    ),
  );
}
