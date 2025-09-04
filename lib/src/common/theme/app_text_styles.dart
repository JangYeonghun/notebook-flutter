import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 앱의 타이포그래피 스타일을 정의하는 클래스
class AppTextStyles {
  const AppTextStyles._();

  static const String fontFamily = 'Pretendard';

  static final TextStyle display = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 36.sp,
    height: 44 / 36,
  );

  static final TextStyle headline1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w700,
    fontSize: 28.sp,
    height: 36 / 28,
  );

  static final TextStyle headline2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 22.sp,
    height: 28 / 22,
  );

  static final TextStyle subtitle1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    height: 24 / 18,
  );

  static final TextStyle body1 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    height: 24 / 16,
  );

  static final TextStyle body2 = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    height: 20 / 14,
  );

  static final TextStyle button = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    letterSpacing: 0.5.w,
  );

  static final TextStyle caption = TextStyle(
    fontFamily: fontFamily,
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    height: 16 / 12,
  );
}