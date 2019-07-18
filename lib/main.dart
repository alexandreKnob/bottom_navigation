import 'package:flutter/material.dart';
import 'place_holder.dart';
import 'inicio.dart';
import 'produtos.dart';
import 'servicos.dart';
import 'contatos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  String _tituloApp = "Home";
  int _currentIndex = 0;

/*
  final List<Widget> _children = [
    PlaceholderWidget(Colors.white),
    PlaceholderWidget(Colors.deepOrange),
    PlaceholderWidget(Colors.green)
  ];
*/
  final List<Widget> _paginas = [
    Inicio(),
    Produtos(),
    Servicos(),
    Contatos()

  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
      if (_currentIndex == 0) {
        _tituloApp = "Home";
      } else if (_currentIndex == 1) {
        _tituloApp = "Produtos";
      } else if (_currentIndex == 2) {
        _tituloApp = "Serviços";
      } else if (_currentIndex == 3) {
        _tituloApp = "Contato";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloApp),
      ),
      body: _paginas[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.black,
        onTap: onTabTapped,
        // new

        currentIndex: _currentIndex,
        // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(Icons.home,),title: Text('Home'),),
          new BottomNavigationBarItem(
            icon: Icon(Icons.fastfood),title: Text('Produtos'),),
          new BottomNavigationBarItem(
              icon: Icon(Icons.build), title: Text('Serviços')),
          new BottomNavigationBarItem(
              icon: Icon(Icons.mail), title: Text('Contato')),
        ],
      ),
    );
  }
}
