import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: BottomNavigationBar(
         type: BottomNavigationBarType.fixed,
         currentIndex: _selectedIndex,
         onTap: (i) => setState(() => _selectedIndex = i),
         selectedFontSize: 15.0,
         unselectedFontSize: 15.0,
         items: [
           BottomNavigationBarItem(icon: Icon(Icons.home_outlined),
           activeIcon: Icon(Icons.home),
           label: 'Início',
           ),
           BottomNavigationBarItem(icon: Icon(Icons.explore_outlined),
             activeIcon: Icon(Icons.explore),
             label: 'Exporar',
           ),
           BottomNavigationBarItem(icon: Icon(Icons.add_circle_outline_outlined, size: 45.5),
             activeIcon: Icon(Icons.add_circle_outline, size: 45.5),
             label: "",
           ),
           BottomNavigationBarItem(icon: Icon(Icons.subscriptions_outlined),
             activeIcon: Icon(Icons.subscriptions),
             label: 'Inscrições',
           ),
           BottomNavigationBarItem(icon: Icon(Icons.video_library_outlined),
             activeIcon: Icon(Icons.video_library),
             label: 'Biblioteca',
           ),
         ],
       ),
    );
  }
}