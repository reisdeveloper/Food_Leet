import 'package:flutter/material.dart';
import 'package:food_fleet/core/auth/auth_screens/auth_sigin.dart';
import 'package:food_fleet/core/auth/auth_screens/auth_signup_screen.dart';
import 'package:food_fleet/core/config/constants/color_theme.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: const Text(
            "Food Leet",
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
            ),
          ),
          bottom: const TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            indicatorWeight: 5,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                text: 'Sign in',
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
                text: 'SignUp',
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child: const TabBarView(
            children: [
              SignInScreen(),
              SignUpScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
