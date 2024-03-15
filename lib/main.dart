import 'package:flutter/material.dart';
import 'package:food_fleet/core/auth/auth_screens/auth_screen.dart';
import 'package:food_fleet/core/auth/auth_screens/auth_sigin.dart';
import 'package:food_fleet/core/presetation/splash_screen/splash_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: const Color(0xFFFF204E),
      ),
      home: const AuthScreen(),
    );
  }
}
