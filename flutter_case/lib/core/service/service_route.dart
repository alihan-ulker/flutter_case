import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_case/source/views/educational_status_page.dart';
import 'package:flutter_case/source/views/express_yourself_page.dart';
import 'package:flutter_case/source/views/welcome_page.dart';

class Routes {
  static const String welcomePage = "/welcomePage";
  static const String expressYourselfPage = "/expressYourselfPage";
  static const String educationalStatusPage = "/educationalStatusPage";
}

class RouteService {
  static FluroRouter router = FluroRouter();
  static final appNavigatorKey = GlobalKey<NavigatorState>();

  //Route Handlers
  static final Handler _handlerWelcome =
      Handler(handlerFunc: (context, parameters) => const WelcomePage());
  static final Handler _handlerExpressYourselfPage = Handler(
      handlerFunc: (context, parameters) => const ExpressYourselfPage());
  static final Handler _handlerEducationalStatusPage = Handler(
      handlerFunc: (context, parameters) => const EducationalStatusPage());

  //Route Defines
  static void setupRouter() {
    router.define(Routes.welcomePage, handler: _handlerWelcome);
    router.define(Routes.expressYourselfPage,
        handler: _handlerExpressYourselfPage);
    router.define(Routes.educationalStatusPage,
        handler: _handlerEducationalStatusPage);
  }
}
