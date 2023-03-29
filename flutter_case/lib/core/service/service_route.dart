import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_case/source/views/express_yourself_page.dart';
import 'package:flutter_case/source/views/welcome_page.dart';

class Routes {
  static const String welcomePage = "/welcomePage";
  static const String expressYourselfPage = "/expressYourselfPage";
}

class RouteService {
  static FluroRouter router = FluroRouter();
  static final appNavigatorKey = GlobalKey<NavigatorState>();

  //Route Handlers
  static final Handler _handlerWelcome =
      Handler(handlerFunc: (context, parameters) => const WelcomePage());
  static final Handler _handlerExpressYourselfPage = Handler(
      handlerFunc: (context, parameters) => const ExpressYourselfPage());

  //Route Defines
  static void setupRouter() {
    router.define(Routes.welcomePage, handler: _handlerWelcome);
    router.define(Routes.expressYourselfPage,
        handler: _handlerExpressYourselfPage);
  }
}
