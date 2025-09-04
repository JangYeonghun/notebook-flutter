import 'package:flutter/material.dart';
import 'package:notebook/src/common/layout/bottom_navigation.dart';
import 'package:notebook/src/common/layout/scaffold_layout.dart';
import 'package:notebook/src/core/configs/bottom_navigation_config.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int _currentIndex = 0;

  void _onTapTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return ScaffoldLayout(
      body: IndexedStack(
        index: _currentIndex,
        children: BottomNavigationConfig.items.map((BottomNavData navData) => KeyedSubtree(
            child: navData.widget
        )).toList(),
      ),
      bottomNavigationBar: BottomNavigation(
        navItems: BottomNavigationConfig.items,
        currentIndex: _currentIndex,
        onTap: _onTapTapped,
      ),
    );
  }
}
