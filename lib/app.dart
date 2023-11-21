import 'package:boostera/src/core/route/app_route.dart';
import 'package:flutter/material.dart';

class BossteraApp extends StatelessWidget {
  const BossteraApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,
    );
  }
}
