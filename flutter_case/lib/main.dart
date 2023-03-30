import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_case/core/service/service_route.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';
import 'package:flutter_case/source/views/welcome_page.dart';

void main() {
  RouteService.setupRouter();
  runApp(const MyApp());
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: UIColor.blue,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark));
  log('\n==> Application Started!');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: UIText.appTitle,
      debugShowCheckedModeBanner: false,
      navigatorKey: RouteService.appNavigatorKey,
      onGenerateRoute: RouteService.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}
