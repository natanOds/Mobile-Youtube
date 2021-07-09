import 'package:flutter/material.dart';

import 'home_screen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;

  final _screens = [
    HomeScreen(),
    //const Scaffold(body: Center(child: Text('Inicio'),),),
    const Scaffold(
      body: Center(
        child: Text('Explorar'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Adicionar'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Inscrições'),
      ),
    ),
    const Scaffold(
      body: Center(
        child: Text('Biblioteca'),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: _screens.asMap().map(
              (i, screen) => MapEntry(
                i,
                Offstage(offstage: _selectedIndex != i, child: screen),
              ),
            ).values.toList(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: (i) => setState(() => _selectedIndex = i),
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            activeIcon: Icon(Icons.explore),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle_outline_outlined, size: 45.5),
            activeIcon: Icon(Icons.add_circle_outline, size: 45.5),
            label: "",
            //Atualizar o botão
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.subscriptions_outlined),
            activeIcon: Icon(Icons.subscriptions),
            label: 'Inscrições',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            activeIcon: Icon(Icons.video_library),
            label: 'Biblioteca',
          ),
        ],
      ),
    );
  }
}
