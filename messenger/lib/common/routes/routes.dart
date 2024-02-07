import 'package:flutter/material.dart';
import 'package:messenger/features/Home/pages/communities_page.dart';
import 'package:messenger/features/auth/pages/login_form.dart';
import 'package:messenger/features/auth/pages/verification.dart';
import 'package:messenger/features/welcome/pages/welcome_page.dart';

class Routes {
  static const String welcome = 'welcome';
  static const String login = 'login';
  static const String verification = 'verification';
  static const String userInfo = 'user-info';
  static const String communitiesPage = 'homepage';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case welcome:
        return MaterialPageRoute(builder: (context) => const WelcomePage());
      case login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case verification:
        final Map args = settings.arguments as Map;
        return MaterialPageRoute(
          builder: (context) => VerificationPage(
            verificationId: args['verification-id'],
            phoneNumber: args['phone-number'],
          ),
        );
      case userInfo:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('User Info Page Route To Be Added'),
            ),
          ),
        );
      case communitiesPage:
        return MaterialPageRoute(builder: (context) => const CommunitiesPage());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No Page Route Provider'),
            ),
          ),
        );
    }
  }
}
