import 'package:flutter/material.dart';
import 'package:flutter_case/core/service/service_route.dart';
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
      appBar: AppBar(
        title: Center(
          child: Text(UIText.appTitle),
        ),
      ),
      body: Center(
        child: SizedBox(
          height: mediaQueryData.size.height * 0.20,
          width: mediaQueryData.size.width * 0.6,
          child: Column(
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
    );
  }
}
