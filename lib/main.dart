import 'package:flutter/material.dart';
import 'package:personal_web_site/core/router/router.dart';
import 'package:personal_web_site/core/theme/my_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      theme: MyTheme.darkTheme,
      routerConfig: MyRouter.router,
    
    );
  }
}
