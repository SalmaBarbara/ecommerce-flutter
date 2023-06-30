import 'screens/auth/sign_up_screen.dart';
import 'package:flutter/material.dart';

import 'screens/auth/Onboarding_screen.dart';
import 'screens/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
    
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home:const SigninScreen(),
    );
  }
}

