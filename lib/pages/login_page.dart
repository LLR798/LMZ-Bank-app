import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF5B0DA8),
        padding: const EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 120,
              height: 120,
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              cursorColor: Color(0xFFF2F2F2),
              autofocus: true,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xFFF2F2F2), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xFFF2F2F2), width: 1),
                ),
                hintText: 'user@mail.com',
                hintStyle: TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
                label: Text(
                  'Login',
                  style: TextStyle(
                    color: Color(0xFFF2F2F2),
                    fontSize: 22,
                  ),
                ),
              ),
              style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const TextField(
              cursorColor: Color(0xFFF2F2F2),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xFFF2F2F2), width: 1),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  borderSide: BorderSide(color: Color(0xFFF2F2F2), width: 1),
                ),
                hintText: '*******',
                hintStyle: TextStyle(color: Color(0xFFF2F2F2)),
                label: Text(
                  'Senha',
                  style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 22),
                ),
              ),
              obscureText: true,
              style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 0),
              width: MediaQuery.of(context).size.width,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/navigations');
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  primary: const Color(0xFF020202),
                ),
                child: const Text(
                  'Login',
                  style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'ou',
              style: TextStyle(color: Color(0xFFF2F2F2)),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Ainda não tem uma conta? ',
                  style: TextStyle(color: Color(0xFFF2F2F2)),
                ),
                TextButton(
                    style: TextButton.styleFrom(
                        minimumSize: Size.zero, padding: EdgeInsets.zero),
                    onPressed: () {
                      Navigator.pushNamed(context, '/registrationPage');
                    },
                    child: const Text(
                      'Cadastra-se!',
                      style: TextStyle(color: Color(0xFFF2F2F2)),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
