import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'layout/desktop.dart';
import 'layout/tablet.dart';
import 'layout/mobile.dart';
import 'layout/responsive_layout.dart';
import 'theme/app_theme.dart';
import 'theme/theme_provider.dart';

void main() {
  runZonedGuarded<Future<void>>(() async {
    final themeStr = await rootBundle.loadString('assets/appainter_theme.json');
    final themeDarkStr =
        await rootBundle.loadString('assets/appainter_theme.json');
    final themeJson = jsonDecode(themeStr);
    final themeDarkJson = jsonDecode(themeDarkStr);
    final theme = ThemeDecoder.decodeThemeData(themeJson)!;
    final darkTheme = ThemeDecoder.decodeThemeData(themeDarkJson)!;
    final appThemeData = AppThemeData(
      theme.copyWith(
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: AppTheme.pink,
          foregroundColor: AppTheme.black,
        ),
      ),
      darkTheme,
    );
    runApp(
      ChangeNotifierProvider(
        create: (_) => ThemeProvider(appThemeData),
        child: AppTheme(
          child: MyApp(appThemeData),
        ),
      ),
    );
  }, (error, stack) => print(error));
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  AppThemeData theme;
  MyApp(this.theme, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
      ),
    );
  }
}