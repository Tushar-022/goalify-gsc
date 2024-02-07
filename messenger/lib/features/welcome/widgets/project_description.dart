import 'package:flutter/material.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';

class ProjectDescription extends StatelessWidget {
  const ProjectDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30,
        vertical: 20,
      ),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'A ',
          style: TextStyle(
            fontSize: 18,
            color: context.theme.primaryTextColor,
            height: 1.5,
          ),
          children: [
            TextSpan(
              text: 'Google Solutions Challenge ',
              style: TextStyle(
                color: context.theme.highlightedTextColor,
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: 'Project\nTap here to read ',
              style: TextStyle(
                color: context.theme.primaryTextColor,
                fontSize: 18,
              ),
            ),
            TextSpan(
              text: 'Project Description',
              style: TextStyle(
                color: context.theme.highlightedTextColor,
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
