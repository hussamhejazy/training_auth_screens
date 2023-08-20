import 'package:flutter/material.dart';
import 'package:login_register/screens/ForgetPassword.dart';
import 'package:login_register/screens/LoginScreen.dart';
import 'package:login_register/screens/RegisterScreen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context) => const LoginScreen(),
        '/forget_password' : (context) => const ForgetPassword(),
        '/create_account' : (context) => const RegisterScreen(),
      },
      initialRoute: '/',
    );
  }
}

