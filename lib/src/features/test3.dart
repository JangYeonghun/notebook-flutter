import 'package:flutter/material.dart';
import 'package:notebook/src/common/theme/app_text_styles.dart';

class Test3 extends StatelessWidget {
  const Test3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('333333', style: AppTextStyles.body1)
      ],
    );
  }
}
