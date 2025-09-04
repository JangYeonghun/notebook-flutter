import 'package:flutter/material.dart';
import 'package:notebook/src/common/extensions/widget_extensions.dart';
import 'package:notebook/src/core/configs/bottom_navigation_config.dart';

class BottomNavigationItem extends StatelessWidget {
  final BottomNavData navData;
  final bool isSelected;
  final VoidCallback onTap;
  const BottomNavigationItem({
    super.key,
    required this.navData,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: Text(
          navData.title,
          style: TextStyle(
            color: isSelected ? Theme.of(context).primaryColor : Colors.grey,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
          ),
          textAlign: TextAlign.center,
        ),
      ).onTap(onTap),
    );
  }
}
