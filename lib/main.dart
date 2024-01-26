import 'package:flutter/material.dart';
import 'package:loginsignup/homepage.dart';
import 'package:loginsignup/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login & Signup',
      theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.white)),
      initialRoute: 'login',
      routes: {
        'login': (context) => const Login(),
      },
    );
  }
}
