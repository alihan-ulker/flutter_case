import 'package:flutter/material.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';

class ExpressYourselfPage extends StatefulWidget {
  const ExpressYourselfPage({Key? key}) : super(key: key);

  @override
  ExpressYourselfPageState createState() => ExpressYourselfPageState();
}

class ExpressYourselfPageState extends State<ExpressYourselfPage> {
  late MediaQueryData mediaQueryData = MediaQuery.of(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.blue,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
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
                  children: [
                    //AppBar and Back Button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 12.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_back,
                              color: UIColor.darkGray,
                            ),
                          ),
                          Container(
                            width: mediaQueryData.size.width * 0.2,
                          ),
                          Text(
                            UIText.appBar,
                            style: TextStyle(
                              color: UIColor.appBarText,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Divider
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20.0, top: 8.0, bottom: 16.0),
                      child: Divider(
                        height: 1.0,
                        thickness: 1.0,
                        color: UIColor.appBarDivider,
                      ),
                    ),

                    //Profile Photo
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 120.0,
                            width: 120.0,
                            decoration: BoxDecoration(
                              color: UIColor.gray,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: CircleAvatar(
                                backgroundColor: UIColor.profileBackground,
                                child: const Icon(
                                  Icons.person,
                                  color: Colors.grey,
                                  size: 60.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Profile Subtitle
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.profilePhoto,
                            style: TextStyle(
                                fontSize: 16.0, color: UIColor.darkGray),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(UIText.profilePhotoTitle),
                        ],
                      ),
                    ),

                    //Add Button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: UIColor.buttonBorder),
                            ),
                            child: Text(
                              UIText.addButton,
                              style: TextStyle(color: UIColor.buttonBorder),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Gender Buttons
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.gender,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                height: 50.0,
                                width: mediaQueryData.size.width * 0.9,
                                child: OutlinedButton(
                                  onPressed: () {},
                                  style: OutlinedButton.styleFrom(
                                    side:
                                        BorderSide(color: UIColor.buttonBorder),
                                  ),
                                  child: Text(UIText.genderWoman),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 50.0,
                                  width: mediaQueryData.size.width * 0.9,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          color: UIColor.lightButtonBorder),
                                    ),
                                    child: Text(UIText.genderMan),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 50.0,
                                  width: mediaQueryData.size.width * 0.9,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    style: OutlinedButton.styleFrom(
                                      side: BorderSide(
                                          color: UIColor.lightButtonBorder),
                                    ),
                                    child: Text(UIText.genderOthers),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    //Pet Buttons
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.petQuestion,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.43,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(UIText.yesButton),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.43,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(UIText.noButton),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Pet Count Buttons
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, bottom: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.petTitle,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50.0,
                          width: mediaQueryData.size.width * 0.9,
                          child: OutlinedButton(
                            onPressed: () {},
                            child: Text(UIText.countButtonOne),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.9,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(UIText.countButtonTwo),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.9,
                            child: OutlinedButton(
                              onPressed: () {},
                              child: Text(UIText.countButtonThree),
                            ),
                          ),
                        ),
                      ],
                    ),

                    //Educational Status
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, bottom: 60.0),
                      child: Row(
                        children: [
                          Text(UIText.educationalStatus),
                        ],
                      ),
                    )
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
