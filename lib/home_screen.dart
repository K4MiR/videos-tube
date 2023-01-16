import 'package:flutter/material.dart';
import 'package:videos_tube/screen/hight_screen.dart';
import 'package:videos_tube/screen/library.dart';
import 'package:videos_tube/screen/start_screen.dart';
import 'package:videos_tube/screen/subscription.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  int _indiceAtual = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      StartScreen(),
      HightScreen(),
      SubScreen(),
      LibraryScreen(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.red,
          opacity: 1,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/image/videos-tube.png',
          width: 130,
          height: 22,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: () {
              print('acao: videocam');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('acao: pesquisa');
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print('acao: conta');
            },
          ),
        ],
      ),
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceAtual,
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        type: BottomNavigationBarType.shifting,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orange,
            icon: Icon(Icons.whatshot),
            label: 'Em alta',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.deepPurple,
            icon: Icon(Icons.subscriptions),
            label: 'Inscrições',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.folder),
            label: 'Biblioteca',
          ),
        ],
      ),
    );
  }
}
