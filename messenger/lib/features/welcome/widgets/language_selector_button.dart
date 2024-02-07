import 'package:flutter/material.dart';
import 'package:messenger/common/theme/custom_theme_extension.dart';
import 'package:messenger/common/utils/colors.dart';
import 'package:messenger/common/widgets/custom_icon_button.dart';

class LanguageSelectorButton extends StatelessWidget {
  const LanguageSelectorButton({
    super.key,
  });

  showBottomSheet(context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //top line
              Container(
                height: 4,
                width: 30,
                decoration: BoxDecoration(
                  color: context.theme.primaryTextColor!.withOpacity(.4),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const SizedBox(width: 20),
                  CustomIconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: Icons.close_outlined,
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'App Language',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(
                thickness: .5,
                color: context.theme.backgroundColor,
              ),
              RadioListTile(
                value: true,
                groupValue: true,
                onChanged: (value) {},
                activeColor: context.theme.primaryWidgetBackgroundColor,
                title: const Text('English'),
                subtitle: Text(
                  "(Device language)",
                  style: TextStyle(
                    color: context.theme.primaryTextColor,
                  ),
                ),
              ),
              RadioListTile(
                value: true,
                groupValue: false,
                onChanged: (value) {},
                activeColor: context.theme.primaryWidgetBackgroundColor,
                title: const Text('हिंदी'),
                subtitle: Text(
                  "Hindi",
                  style: TextStyle(
                    color: context.theme.primaryTextColor,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: const Color(0xFF53BDEB),
      color: context.theme.backgroundColor!
          .withBlue(240)
          .withGreen(240)
          .withRed(240)
          .withOpacity(0.2),
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: () => showBottomSheet(context),
        borderRadius: BorderRadius.circular(20),
        splashFactory: NoSplash.splashFactory,
        highlightColor: context.theme.secondaryWidgetBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.language,
                color: context.theme.primaryWidgetBackgroundColor,
              ),
              const SizedBox(width: 10),
              Text(
                'English',
                style: TextStyle(color: context.theme.primaryTextColor),
              ),
              const SizedBox(width: 10),
              Icon(
                Icons.keyboard_arrow_down,
                color: context.theme.primaryWidgetBackgroundColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
