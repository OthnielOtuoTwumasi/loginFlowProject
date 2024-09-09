import 'package:flowproject/pages/authentication_interface.dart';
import 'package:flowproject/pages/login_page.dart';
import 'package:flowproject/pages/register_page.dart';
import 'pages/forgot_password_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(debugShowCheckedModeBanner:false,
    routes: {
      "/" : (context)=> const AuthenticationInterface(),
      "loginPage":(context ) => const LoginPage(),
      "/forgotPasswordPage":(context ) => const ForgotPasswordPage(),

      "/registerPage":(context ) => const RegisterPage(),
    },
    );
  }}