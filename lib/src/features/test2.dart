import 'package:flutter/material.dart';
import 'package:notebook/src/common/theme/app_text_styles.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('222222', style: AppTextStyles.body1)
      ],
    );
  }
}