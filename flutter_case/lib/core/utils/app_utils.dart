import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_case/core/service/service_route.dart';

class AppUtils {
  //navigation

  static startPush(BuildContext context, {required String route}) {
    RouteService.router.navigateTo(context, route,
        replace: false, transition: TransitionType.fadeIn);
  }

  static void startPop(BuildContext context, Map<String, dynamic> messageData) {
    RouteService.router.pop(context, messageData);
  }
}
