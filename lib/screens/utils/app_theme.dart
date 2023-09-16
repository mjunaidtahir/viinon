import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:viinon/gen/colors.gen.dart';

class Themes {
  ThemeData selectLightTheme() {
    final Map<int, Color> color = {
      50: ColorName.primaryGreen.withOpacity(0.1),
      100: ColorName.primaryGreen.withOpacity(.2),
      200: ColorName.primaryGreen.withOpacity(.3),
      300: ColorName.primaryGreen.withOpacity(.4),
      400: ColorName.primaryGreen.withOpacity(.5),
      500: ColorName.primaryGreen.withOpacity(.6),
      600: ColorName.primaryGreen.withOpacity(.7),
      700: ColorName.primaryGreen.withOpacity(.8),
      800: ColorName.primaryGreen.withOpacity(.9),
      900: ColorName.primaryGreen.withOpacity(1),
    };

    return ThemeData(
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all(ColorName.primaryGreen),
      ),
      cardTheme: CardTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 3,
      ),
      fontFamily: 'Roboto-Regular',
      splashColor: ColorName.primaryGreen.withOpacity(0.2),
      brightness: Brightness.light,
      scaffoldBackgroundColor: Colors.white,
      primaryColor: ColorName.primaryGreen,
      appBarTheme: selectAppBarTheme(),
      primarySwatch: MaterialColor(ColorName.primaryGreen.value, color),
      textTheme: selectTextTheme(),
      buttonTheme: const ButtonThemeData(
        buttonColor: Colors.white,
        shape: RoundedRectangleBorder(),
      ),
      elevatedButtonTheme: selectOutLinedButtonTheme(),
      outlinedButtonTheme: outLinedButtonTheme(),
      dividerTheme: DividerThemeData(
        color: Colors.grey.withAlpha(500),
      ),
      dialogTheme: DialogTheme(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.white,
      ),
    );
  }

  TextTheme selectTextTheme() {
    return const TextTheme(
      displayLarge: TextStyle(
        fontSize: 32,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
      displayMedium: TextStyle(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      displaySmall: TextStyle(
        fontSize: 24,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      headlineMedium: TextStyle(
        fontSize: 18,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      bodyLarge: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      titleMedium: TextStyle(
        fontSize: 12,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
      titleSmall: TextStyle(
        color: Colors.black,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
      labelLarge: TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
    );
  }

  AppBarTheme selectAppBarTheme() {
    return const AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black),
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      backgroundColor: Colors.white,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorName.primaryGreen,
        fontFamily: "Roboto-Regular",
      ),
    );
  }

  ElevatedButtonThemeData selectOutLinedButtonTheme() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        disabledForegroundColor: Colors.white,
        disabledBackgroundColor: Colors.grey,
        backgroundColor: ColorName.primaryGreen,
        padding: const EdgeInsets.symmetric(vertical: 15),
      ),
    );
  }

  OutlinedButtonThemeData outLinedButtonTheme() {
    return OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        padding: const EdgeInsets.symmetric(vertical: 15),
        textStyle: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          fontFamily: 'Roboto-Regular',
        ),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
        borderSide: const BorderSide(color: ColorName.primaryGreen),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6.0),
      ),
      focusColor: ColorName.primaryGreen,
      hintStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
      ),
      labelStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      fillColor: Colors.white,
      filled: true,
    );
  }
}
