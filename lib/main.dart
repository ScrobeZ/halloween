import 'package:flutter/material.dart';
import 'package:halloween/screens/home/home_screen.dart';

import 'config/router/app_router.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 4).getTheme(),
      routerConfig: appRouter,
    );
  }
}
