import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3))
        .then((_) => Navigator.of(context).pushReplacementNamed('/loginPage'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF5B0DA8),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Image(
              image: AssetImage('assets/images/logo.png'),
              width: 120,
              height: 120,
            ),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(
              color: Color(0xFFF2F2F2),
            ),
          ],
        ),
      ),
    );
  }
}
