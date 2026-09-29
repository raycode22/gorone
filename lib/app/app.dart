// lib/app/app.dart
import 'package:flutter/material.dart';

import 'router.dart';
import 'theme.dart';

class GoroneApp extends StatelessWidget {
  const GoroneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Gorone',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      routerConfig: appRouter,
    );
  }
}
