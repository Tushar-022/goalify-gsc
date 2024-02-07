import 'package:flutter/material.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

class CustomElevatedButton extends StatelessWidget {
  final double? buttonWidth;
  final VoidCallback onPressed;
  final String text;
  const CustomElevatedButton({
    super.key,
    this.buttonWidth,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 42,
      width: buttonWidth ?? MediaQuery.of(context).size.width - 175,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: context.theme.primaryWidgetBackgroundColor,
          foregroundColor: context.theme.secondaryTextColor,
          splashFactory: NoSplash.splashFactory,
          elevation: 0,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          text,
          style: const TextStyle(fontSize: 17),
        ),
      ),
    );
  }
}

        // child: DefaultTextStyle(
        //   style: const TextStyle(
        //     fontSize: 18,
        //   ),
        //   child: AnimatedTextKit(
        //     animatedTexts: [
        //       RotateAnimatedText('Get Started'),
        //       RotateAnimatedText('Login'),
        //       RotateAnimatedText('Click Here'),
        //     ],
        //   ),
        // ),