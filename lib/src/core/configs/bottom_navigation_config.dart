import 'package:flutter/material.dart';
import 'package:notebook/src/features/test2.dart';
import 'package:notebook/src/features/test3.dart';
import 'package:notebook/src/features/test4.dart';
import 'package:notebook/src/features/test5.dart';
import 'package:notebook/main.dart';

typedef BottomNavData = ({int index, Widget widget, String title});

class BottomNavigationConfig {
  const BottomNavigationConfig._();

  static const List<BottomNavData> items = [
    (index: 0, widget: HomePage(), title: '홈'),
    (index: 1, widget: Test2(), title: '테스트2'),
    (index: 2, widget: Test3(), title: '테스트3'),
    (index: 3, widget: Test4(), title: '테스트4'),
    (index: 4, widget: Test5(), title: '테스트5'),
  ];
}