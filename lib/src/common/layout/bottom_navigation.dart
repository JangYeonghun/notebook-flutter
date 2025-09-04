import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notebook/src/common/components/bottom_navigation_item.dart';
import 'package:notebook/src/core/configs/bottom_navigation_config.dart';

class BottomNavigation extends StatelessWidget {
  final List<BottomNavData> navItems;
  final int currentIndex;
  final Function(int) onTap;
  const BottomNavigation({
    super.key,
    required this.navItems,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navItems.asMap().entries.map((entry) {
          final int index = entry.key;
          final BottomNavData navData = entry.value;
          return BottomNavigationItem(
            navData: navData,
            isSelected: currentIndex == index,
            onTap: () => onTap(index),
          );
        }).toList(),
      ),
    );
  }
}
