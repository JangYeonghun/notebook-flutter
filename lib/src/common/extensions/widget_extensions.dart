import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Widget onTap(VoidCallback onTap) => GestureDetector(
    onTap: onTap,
    behavior: HitTestBehavior.opaque,
    child: this,
  );
}