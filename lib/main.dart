import 'package:flutter/material.dart';

import 'menu_screen.dart';
import 'screens/simple_screen.dart';
import 'screens/loader_screen.dart';
import 'screens/orientation_screen.dart';
import 'screens/api_screen.dart';
import 'screens/no_interaction_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
       routes: {
        '/': (context) => const MenuScreen(),
        '/simple': (context) => const SimpleScreen(),
        '/loader': (context) => const LoaderScreen(),
        '/orientation': (context) => const OrientationScreen(),
        '/api': (context) => const ApiScreen(),
        '/none': (context) => const NoInteractionScreen(),
      },
    );
  }
}
