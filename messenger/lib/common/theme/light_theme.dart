import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';
import 'package:messenger/common/utils/colors.dart';

ThemeData lightTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    backgroundColor: MyColors.backgroundLight,
    scaffoldBackgroundColor: MyColors.backgroundLight,
    extensions: [CustomThemeExtension.lightMode],
    appBarTheme: const AppBarTheme(
      backgroundColor: MyColors.backgroundLight,
      titleTextStyle: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w600,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      backgroundColor: MyColors.backgroundLight,
      modalBackgroundColor: MyColors.backgroundLight,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      ),
    ),
    dialogBackgroundColor: MyColors.backgroundLight,
    dialogTheme: DialogTheme(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    ),
    bottomAppBarColor: MyColors.backgroundLight,
  );
}
