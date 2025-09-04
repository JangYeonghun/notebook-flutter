import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ScaffoldLayout extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final bool bottomSafeArea;
  final Color backgroundColor;
  final Widget? bottomNavigationBar;
  const ScaffoldLayout({
    super.key,
    this.appBar,
    required this.body,
    this.bottomSafeArea = true,
    this.backgroundColor = Colors.white,
    this.bottomNavigationBar,
  });

  @override
  Widget build(BuildContext context) {
    final Brightness currentBrightness = MediaQuery.platformBrightnessOf(context);

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarIconBrightness: currentBrightness == Brightness.dark ? Brightness.light : Brightness.dark,
        statusBarBrightness: currentBrightness == Brightness.dark ? Brightness.light : Brightness.dark,
      ),
    );

    return ColoredBox(
      color: Colors.white,
      child: SafeArea(
        top: false,
        child: Scaffold(
          appBar: appBar,
          backgroundColor: backgroundColor,
          body: SafeArea(
              bottom: bottomSafeArea,
              child: body
          ),
          bottomNavigationBar: bottomNavigationBar,
        ),
      ),
    );
  }
}