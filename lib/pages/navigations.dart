import 'package:flutter/material.dart';
import 'package:lmz_bank/pages/home_page.dart';

class Navigations extends StatefulWidget {
  const Navigations({Key? key}) : super(key: key);

  @override
  State<Navigations> createState() => _NavigationsState();
}

class _NavigationsState extends State<Navigations> {
  int indexBottomNavigationBar = 0;
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF5b0da8),
        title: Row(children: [
          SizedBox(
            height: 35,
            width: 35,
            //margin: const EdgeInsets.only(left: 5.0),
            child: Image.asset('assets/images/logo.png',
                fit: BoxFit.fill, height: 10),
          ),
        ]),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF5B0DA8),
        child: ListView(
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF5B0DA8)),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Color(0xFF4B0B8B),
                child: Text(
                  'LLR',
                  style: TextStyle(color: Color(0xFFF2F2F2)),
                ),
              ),
              accountName: Text('Lucas Lumertz Ramos'),
              accountEmail: Text('lucas@gmail.com'),
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Editar perfil',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.notifications,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Notificações',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.article,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Informe de rendimentos',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.security,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Segurança',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payments,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Configurar conta',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.payment,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Configurar cartões',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.equalizer,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Configurar perfil de investidor',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.description,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Sobre',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.replay,
                color: Color(0xFFF2F2F2),
              ),
              title: Text(
                'Sair',
                style: TextStyle(
                  color: Color(0xFFF2F2F2),
                ),
              ),
              trailing: Icon(
                Icons.chevron_right,
                color: Color(0xFFF2F2F2),
              ),
            ),
          ],
        ),
      ),
      body: PageView(
        controller: pageController,
        children: [
          const HomePage(),
          Container(color: Colors.black),
          Container(color: Colors.grey),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // unselectedLabelStyle: TextStyle(color: Color(0xFF9a9a9a)),
          // unselectedItemColor: Color(0xFF9a9a9a),
          // showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(color: Color(0xFF5B0DA8)),
          selectedItemColor: const Color(0xFF5B0DA8),
          // showSelectedLabels: true,
          currentIndex: indexBottomNavigationBar,
          onTap: (int page) {
            setState(() {
              indexBottomNavigationBar = page;
            });
            pageController.animateToPage(
              page,
              duration: const Duration(milliseconds: 300),
              curve: Curves.ease,
            );
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_align_left),
              label: 'Extrato',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.live_help),
              label: 'Ajuda',
            ),
          ]),
    );
  }
}
