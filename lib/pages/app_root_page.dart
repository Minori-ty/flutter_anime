import 'package:anime/pages/MyAnimePage/my_anime_page.dart';
import 'package:anime/pages/SchedulePage/schedule_page.dart';
import 'package:flutter/material.dart';

const List<Widget> bottomNavigationPageList = [
  SchedulePage(),
  MyAnimePage(),
];
const List<BottomNavigationBarItem> bottomNavigationBarItemList = [
  BottomNavigationBarItem(
    icon: Icon(Icons.update),
    label: '更新表',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.book),
    label: '我的追番',
  ),
];

class AppRootPage extends StatefulWidget {
  const AppRootPage({super.key});

  @override
  State<AppRootPage> createState() => _AppRootPageState();
}

class _AppRootPageState extends State<AppRootPage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottomNavigationPageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: bottomNavigationBarItemList,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
