import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:messenger/common/routes/routes.dart';
import 'package:messenger/common/theme/dark_theme.dart';
import 'package:messenger/common/theme/light_theme.dart';
import 'package:messenger/features/Home/pages/home_page.dart';

import 'package:messenger/features/welcome/pages/welcome_page.dart';
import 'package:messenger/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Messenger',
      theme: lightTheme(),
      darkTheme: darkTheme(),
      themeMode: ThemeMode.system,
      // home: const WelcomePage(),
      home: const HomeScreen(),
      onGenerateRoute: Routes.onGenerateRoute,
    );
  }
}