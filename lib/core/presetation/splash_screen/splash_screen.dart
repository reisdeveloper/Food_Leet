import 'dart:async';

import 'package:flutter/material.dart';

import 'package:food_fleet/core/auth/auth_screens/auth_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  // method para o push para a home com duração
  // _initTimer() {
  //   Timer(
  //     const Duration(seconds: 3),
  //     () {
  //       Navigator.push(
  //         context,
  //         MaterialPageRoute(
  //           builder: (_) => const AuthScreen(),
  //         ),
  //       );
  //     },
  //   );
  // }

  // // iniciando estado da tela
  // @override
  // void initState() {
  //   super.initState();
  //   _initTimer();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                bottom: 25,
                left: 23,
                right: 23,
              ),
              child: Image.asset('assets/images/sellers.webp'),
            ),
            const Text(
              " Bem vindo ao \n Food Leet App",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                letterSpacing: 3,
              ),
            )
          ],
        ),
      ),
    );
  }
}
