import 'package:flutter/material.dart';
import 'package:messenger/common/utils/colors.dart';

extension ExtendedTheme on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  static final lightMode = CustomThemeExtension(
    primaryWidgetBackgroundColor: MyColors.primaryWidget,
    primaryTextColor: MyColors.greyLight,
    highlightedTextColor: MyColors.blueLight,
    secondaryWidgetBackgroundColor: MyColors.secondaryWidgetLight,
    secondaryTextColor: MyColors.secondaryTextLight,
    authAppbarTextColor: MyColors.primaryWidget,
    backgroundColor: MyColors.backgroundLight,
    oppositeColor: Colors.black,
  );

  static final darkMode = CustomThemeExtension(
    primaryWidgetBackgroundColor: MyColors.primaryWidget,
    primaryTextColor: MyColors.greyDark,
    highlightedTextColor: MyColors.blueDark,
    secondaryWidgetBackgroundColor: MyColors.secondaryWidgetDark,
    secondaryTextColor: MyColors.secondaryTextDark,
    authAppbarTextColor: const Color(0xFFE9EDEF),
    backgroundColor: MyColors.backgroundDark,
    oppositeColor: Colors.white,
  );

  final Color? primaryWidgetBackgroundColor;
  final Color? secondaryWidgetBackgroundColor;
  final Color? primaryTextColor;
  final Color? secondaryTextColor;
  final Color? highlightedTextColor;
  final Color? authAppbarTextColor;
  final Color? backgroundColor;
  final Color? oppositeColor;

  CustomThemeExtension({
    this.primaryWidgetBackgroundColor,
    this.secondaryWidgetBackgroundColor,
    this.primaryTextColor,
    this.secondaryTextColor,
    this.highlightedTextColor,
    this.authAppbarTextColor,
    this.backgroundColor,
    this.oppositeColor,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    Color? primaryWidgetBackgroundColor,
    Color? secondaryWidgetBackgroundColor,
    Color? primaryTextColor,
    Color? secondaryTextColor,
    Color? highlightedTextColor,
    Color? authAppbarTextColor,
    Color? backgroundColor,
    Color? oppositeColor,
  }) {
    return CustomThemeExtension(
      primaryWidgetBackgroundColor:
          primaryWidgetBackgroundColor ?? this.primaryWidgetBackgroundColor,
      secondaryWidgetBackgroundColor:
          secondaryWidgetBackgroundColor ?? this.secondaryWidgetBackgroundColor,
      primaryTextColor: primaryTextColor ?? this.primaryTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
      highlightedTextColor: highlightedTextColor ?? this.highlightedTextColor,
      authAppbarTextColor: authAppbarTextColor ?? this.authAppbarTextColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      oppositeColor: oppositeColor ?? this.oppositeColor,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) return this;
    return CustomThemeExtension(
      primaryWidgetBackgroundColor: Color.lerp(
          primaryWidgetBackgroundColor, other.primaryWidgetBackgroundColor, t),
      secondaryWidgetBackgroundColor: Color.lerp(secondaryWidgetBackgroundColor,
          other.secondaryWidgetBackgroundColor, t),
      primaryTextColor: Color.lerp(primaryTextColor, other.primaryTextColor, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      oppositeColor: Color.lerp(oppositeColor, other.oppositeColor, t),
      authAppbarTextColor:
          Color.lerp(authAppbarTextColor, other.authAppbarTextColor, t),
      secondaryTextColor:
          Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
      highlightedTextColor:
          Color.lerp(highlightedTextColor, other.highlightedTextColor, t),
    );
  }
}
