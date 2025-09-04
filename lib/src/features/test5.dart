import 'package:flutter/material.dart';
import 'package:notebook/src/common/theme/app_text_styles.dart';

class Test5 extends StatelessWidget {
  const Test5({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('5555555', style: AppTextStyles.body1)
      ],
    );
  }
}
