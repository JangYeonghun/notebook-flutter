import 'package:flutter/material.dart';

/// 앱의 색상 팔레트를 정의하는 클래스
class AppColors {
  const AppColors._();

  // --- Light Mode Colors ---

  /// [Light Mode] 상호작용 가능한 요소에 사용될 안정적인 메인 컬러 (버튼, 링크 등)
  static const Color azure = Color(0xFF0095D1);

  /// [Light Mode] 사용자의 시선을 끌어야 할 때 제한적으로 사용될 하이라이트 컬러
  static const Color deepSkyBlue = Color(0xFF00BFFF);

  /// [Light Mode] 앱의 전체 배경색
  static const Color arcticWhite = Color(0xFFF9FAFB);

  /// [Light Mode] 카드, 다이얼로그 등 배경 위에 떠 있는 요소의 색상
  static const Color white = Color(0xFFFFFFFF);

  /// [Light Mode] 주요 텍스트 색상 (본문, 제목 등)
  static const Color richBlack = Color(0xFF111827);

  /// [Light Mode] 보조 텍스트 색상 (부가 정보, 비활성화 텍스트 등)
  static const Color stormGrey = Color(0xFF6B7280);

  // --- Dark Mode Colors ---

  /// [Dark Mode] 상호작용 가능한 요소에 사용될 선명한 메인 컬러
  static const Color vividSky = Color(0xFF33C6FF);

  /// [Dark Mode] Vivid Sky 색상 위의 텍스트 색상 (높은 대비)
  static const Color deepOcean = Color(0xFF00334D);

  /// [Dark Mode] 앱의 전체 배경색 (Material Design 표준 다크 배경)
  static const Color onyx = Color(0xFF121212);

  /// [Dark Mode] 카드, 다이얼로그 등 배경 위에 떠 있는 요소의 색상
  static const Color darkMatter = Color(0xFF1E1E1E);

  /// [Dark Mode] 주요 텍스트 색상
  static const Color ghostWhite = Color(0xFFF1F1F1);

  /// [Dark Mode] 보조 텍스트 색상
  static const Color silver = Color(0xFFA0A0A0);

  // --- Common Colors ---

  /// 에러 상태를 나타내는 색상
  static const Color errorLight = Color(0xFFB00020);
  static const Color errorDark = Color(0xFFCF6679);
}