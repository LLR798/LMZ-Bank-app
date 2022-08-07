import 'package:flutter/material.dart';
import 'package:lmz_bank/pages/navigations.dart';
import 'package:lmz_bank/pages/login_page.dart';
import 'package:lmz_bank/pages/registration_page.dart';
import 'package:lmz_bank/pages/splash_page.dart';

void main() {
  runApp(const LmzBankApp());
}

class LmzBankApp extends StatelessWidget {
  const LmzBankApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LMZ Bank',
      debugShowCheckedModeBanner: false,
      initialRoute: '/splashPage',
      routes: {
        '/splashPage':(_) => const SplashPage(), 
        '/loginPage': (_) => const LoginPage(),
        '/registrationPage': (_) => const RegistrationPage(),
        '/navigations': (_) => const Navigations(),
      },
    );
  }
}

