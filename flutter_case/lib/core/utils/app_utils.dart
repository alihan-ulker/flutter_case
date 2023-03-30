import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_case/core/service/service_route.dart';

class AppUtils {
  //navigation

  static void startPush(BuildContext context, {required String route}) {
    RouteService.router.navigateTo(context, route,
        replace: false, transition: TransitionType.fadeIn);
  }

  // static void startReplace(BuildContext context,
  //     {required String route, bool? clearStack}) {
  //   RouteService.router.navigateTo(context, route,
  //       replace: true,
  //       clearStack: clearStack ?? false,
  //       transition: TransitionType.fadeIn);
  // }

  // static void startClearStack(BuildContext context, {required String route}) {
  //   RouteService.router.navigateTo(context, route,
  //       clearStack: true, transition: TransitionType.fadeIn);
  // }

  static void startPop(BuildContext context) {
    RouteService.router.pop(context);
  }
}
