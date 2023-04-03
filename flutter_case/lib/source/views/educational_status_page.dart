import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';
import 'package:flutter_case/core/utils/app_consts.dart';
import 'package:flutter_case/core/utils/app_utils.dart';

class EducationalStatusPage extends StatefulWidget {
  const EducationalStatusPage({Key? key}) : super(key: key);

  @override
  EducationalStatusPageState createState() => EducationalStatusPageState();
}

var educationStatus;

class EducationalStatusPageState extends State<EducationalStatusPage> {
  late MediaQueryData mediaQueryData = MediaQuery.of(context);
  var education = AppConsts().educationalStatus;
  Map<String, dynamic> messageData = {'educationStatus': '$educationStatus'};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.blue,
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.elliptical(50.0, 40.0),
                  topRight: Radius.elliptical(50.0, 40.0),
                ),
                color: UIColor.white),
            height: mediaQueryData.size.height,
            width: mediaQueryData.size.width,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        //AppBar and Back Button
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                                onPressed: () {
                                  AppUtils.startPop(context, messageData);
                                },
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: UIColor.darkGray,
                                ),
                              ),
                              Container(
                                width: mediaQueryData.size.width * 0.2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        UIText.educationalStatusTitle,
                        style:
                            TextStyle(fontSize: 16.0, color: UIColor.darkGray),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: Text(
                        UIText.educationalStatusTitleHint,
                        style: TextStyle(
                            fontSize: 14.0, color: UIColor.chooseButtonColor),
                      ),
                    ),

                    //Educational Status List
                    ListView.separated(
                      physics: const ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: education.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            "${education[index]}",
                            style: TextStyle(
                              color: UIColor.chooseButtonColor,
                              fontSize: 14.0,
                            ),
                          ),
                          onTap: () {
                            setState(() {
                              educationStatus = education[index];
                              messageData = {
                                'educationStatus': '$educationStatus'
                              };
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text("$educationStatus"),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                              //Clicking on the training status returns to the previous page.
                              //AppUtils.startPop(context, messageData);
                            });
                            log(educationStatus);
                          },
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return const Divider();
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
