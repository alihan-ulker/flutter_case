import 'package:flutter/material.dart';
import 'package:flutter_case/core/service/service_route.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';
import 'package:flutter_case/core/utils/app_utils.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  WelcomePageState createState() => WelcomePageState();
}

class WelcomePageState extends State<WelcomePage> {
  late MediaQueryData mediaQueryData = MediaQuery.of(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.blue,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Center(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(50.0, 40.0),
                  topRight: Radius.elliptical(50.0, 40.0),
                ),
                color: UIColor.white),
            height: mediaQueryData.size.height,
            width: mediaQueryData.size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Text(
                    UIText.welcome,
                    style: const TextStyle(
                        fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ElevatedButton(
                    onPressed: () => AppUtils.startPush(context,
                        route: Routes.expressYourselfPage),
                    child: Text(UIText.welcomeButton),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
