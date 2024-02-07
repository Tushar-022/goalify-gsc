import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';

class StartPageAnimation extends StatelessWidget {
  const StartPageAnimation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // border: Border.all(
        //   color: Colors.black,
        //   width: 10,
        // ),
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        color: context.theme.primaryWidgetBackgroundColor,
      ),
      child: Lottie.asset(
        'assets/animations/welcome.json',
        height: 300,
        reverse: false,
        repeat: false,
        fit: BoxFit.contain,
      ),
    );
  }
}
