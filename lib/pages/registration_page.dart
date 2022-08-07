import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
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
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      hintText: 'Roberto Rodrigues Schneider',
                      hintStyle:
                          TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
                      label: Text(
                        'Nome completo',
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
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      hintText: 'xxx.xxx.xxx-xx',
                      hintStyle:
                          TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
                      label: Text(
                        'CPF',
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
                    autofocus: true,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      hintText: 'user@mail.com',
                      hintStyle:
                          TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
                      label: Text(
                        'E-mail',
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
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        borderSide:
                            BorderSide(color: Color(0xFFF2F2F2), width: 1),
                      ),
                      hintText: '*******',
                      hintStyle: TextStyle(color: Color(0xFFF2F2F2)),
                      label: Text(
                        'Crie uma senha',
                        style:
                            TextStyle(color: Color(0xFFF2F2F2), fontSize: 22),
                      ),
                    ),
                    obscureText: true,
                    style: TextStyle(color: Color(0xFFF2F2F2), fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
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
                        Navigator.pushReplacementNamed(context, '/loginPage');
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        primary: const Color(0xFF020202),
                      ),
                      child: const Text(
                        'Cadastrar',
                        style:
                            TextStyle(color: Color(0xFFF2F2F2), fontSize: 18),
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
                        'Já possui uma conta? Faça o',
                        style: TextStyle(color: Color(0xFFF2F2F2)),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(
                              minimumSize: Size.zero, padding: EdgeInsets.zero),
                          onPressed: () {
                            Navigator.pushReplacementNamed(
                                context, '/loginPage');
                          },
                          child: const Text(
                            'Login!',
                            style: TextStyle(color: Color(0xFFF2F2F2)),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
    );
  }
}

