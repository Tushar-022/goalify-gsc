import 'package:flutter/material.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';

showAlertDialog({
  required BuildContext context,
  required String message,
  String? btnText,
}) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: context.theme.backgroundColor,
        content: Text(
          message,
          style: TextStyle(
            color: context.theme.oppositeColor,
            fontSize: 15,
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(
              btnText ?? "OK",
              style: TextStyle(
                color: context.theme.highlightedTextColor,
              ),
            ),
          ),
        ],
      );
    },
  );
}
