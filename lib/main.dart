import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notebook/src/common/layout/main_layout.dart';
import 'package:notebook/src/common/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // 시스템 UI 오버레이 스타일 설정
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      )
    );

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true, // 텍스트 크기를 조절할 때, 화면의 너비와 높이 중 더 작은 값을 기준으로 적용할지
      splitScreenMode: true, // 분할 화면 모드 지원
      builder: (_, child) {
        return MaterialApp(
          title: 'My notebook',
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          builder: (context, widget) {
            return MediaQuery(
                data: MediaQuery.of(context).copyWith(textScaler: TextScaler.noScaling), // 시스템 글자 크기 설정 무시
                child: widget!,
            );
          },
          home: const MainLayout(),
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Text(
              '프로젝트 제목',
              style: theme.textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                '이것은 프로젝트에 대한 설명입니다. 테마에 따라 색상이 자동으로 바뀝니다.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text('더보기'),
            ),
          ],
        ),
      ),
    );
  }
}