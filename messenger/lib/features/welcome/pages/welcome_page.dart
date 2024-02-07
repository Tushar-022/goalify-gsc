import 'package:flutter/material.dart';
import 'package:messenger/common/routes/routes.dart';
import 'package:messenger/common/widgets/custom_elevated_button.dart';
import 'package:messenger/features/welcome/widgets/language_selector_button.dart';
import 'package:messenger/features/welcome/widgets/project_description.dart';
import 'package:messenger/features/welcome/widgets/start_page_animation.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  navigateToLoginPage(context) {
    Navigator.of(context).pushNamed(Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            const Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 10,
                ),
                child: StartPageAnimation(),
              ),
            ),
            const SizedBox(height: 30),
            Expanded(
              child: Column(
                children: [
                  const Text(
                    'Welcome To Messenger',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const ProjectDescription(),
                  const SizedBox(height: 10),
                  CustomElevatedButton(
                    onPressed: () => navigateToLoginPage(context),
                    text: 'Get Started',
                  ),
                  const SizedBox(height: 20),
                  const LanguageSelectorButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
