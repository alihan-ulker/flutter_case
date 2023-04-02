import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_case/core/service/service_route.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';
import 'package:flutter_case/core/utils/app_utils.dart';
import 'package:intl/intl.dart';

class ExpressYourselfPage extends StatefulWidget {
  const ExpressYourselfPage({Key? key}) : super(key: key);

  @override
  ExpressYourselfPageState createState() => ExpressYourselfPageState();
}

class ExpressYourselfPageState extends State<ExpressYourselfPage> {
  late MediaQueryData mediaQueryData = MediaQuery.of(context);
  TextEditingController? _textEditingController;
  final _formKey = GlobalKey<FormState>();
  String? monthlySalaryValue;
  bool visibleValue = true;
  RangeValues _currentRangeValues = const RangeValues(1500, 4500);
  double? _startValue;
  double? _endValue;
  DateTime dateTime = DateTime.now();
  // DateFormat dateTimeFormat = DateFormat.yMMMMd();
  // String dateTime = dateTimeFormat.format(DateTime.now());

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
                            onPressed: () {
                              AppUtils.startPop(context);
                            },
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
                              onPressed: () {
                                setState(() {
                                  visibleValue = true;
                                });
                              },
                              child: Text(UIText.yesButton),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.43,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  visibleValue = false;
                                });
                              },
                              child: Text(UIText.noButton),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Pet Count Buttons
                    Visibility(
                      visible: visibleValue,
                      child: Column(
                        children: [
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
                        ],
                      ),
                    ),

                    //Educational Status
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.educationalStatus,
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
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.9,
                            child: OutlinedButton(
                              onPressed: () {
                                AppUtils.startPush(context,
                                    route: Routes.educationalStatusPage);
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    UIText.dropdownHint,
                                    style: TextStyle(
                                        color: UIColor.chooseButtonColor,
                                        fontSize: 14.0),
                                  ),
                                  const Icon(Icons.wheelchair_pickup),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Monthly Salary
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.monthlySalary,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: TextFormField(
                        onTap: () {},
                        onSaved: (inputValue) =>
                            monthlySalaryValue = inputValue,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "25.000",
                          suffixIcon: const Icon(Icons.currency_lira_rounded),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: UIColor.gray),
                            //borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),

                    //Additional Income
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.additionalIncome,
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
                              onPressed: () {
                                setState(() {
                                  visibleValue = true;
                                });
                              },
                              child: Text(UIText.yesButton),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.43,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  visibleValue = false;
                                });
                              },
                              child: Text(UIText.noButton),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Additional Income Type
                    Visibility(
                      visible: visibleValue,
                      child: Column(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 18.0),
                            child: Row(
                              children: [
                                Text(
                                  UIText.additionalIncomeType,
                                  style: TextStyle(
                                      color: UIColor.darkGray, fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 18.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 50.0,
                                  width: mediaQueryData.size.width * 0.9,
                                  child: OutlinedButton(
                                    onPressed: () {},
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          UIText.dropdownHint,
                                          style: TextStyle(
                                              color: UIColor.chooseButtonColor,
                                              fontSize: 14.0),
                                        ),
                                        const Icon(Icons.wheelchair_pickup),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 20.0, top: 18.0),
                            child: Row(
                              children: [
                                TextButton.icon(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  label: Text(UIText.addIncome),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Rental Amount
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.rentalAmount,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: TextFormField(
                        onTap: () {},
                        onSaved: (inputValue) =>
                            monthlySalaryValue = inputValue,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "7.000",
                          suffixIcon: const Icon(Icons.currency_lira_rounded),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: UIColor.gray),
                            //borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                    ),

                    //Price Range
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.priceRange,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: RangeSlider(
                        min: 0.0,
                        max: 100000.0,
                        values: _currentRangeValues,
                        labels: RangeLabels(
                          _currentRangeValues.start.round().toString(),
                          _currentRangeValues.end.round().toString(),
                        ),
                        inactiveColor: UIColor.gray,
                        onChanged: (values) {
                          setState(() {
                            _currentRangeValues = values;
                          });
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(UIText.lowest),
                          Text(UIText.highest),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Form(
                        key: _formKey,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              height: 50.0,
                              width: mediaQueryData.size.width * 0.38,
                              child: TextFormField(
                                controller: _textEditingController,
                                onSaved: (inputValue) {
                                  _startValue = inputValue! as double;
                                  log(_startValue.toString());
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "1.500",
                                  suffixIcon:
                                      const Icon(Icons.currency_lira_rounded),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: UIColor.gray),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 50.0,
                              width: mediaQueryData.size.width * 0.38,
                              child: TextFormField(
                                onSaved: (inputValue) =>
                                    _endValue = inputValue as double,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "4.500",
                                  suffixIcon:
                                      const Icon(Icons.currency_lira_rounded),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: UIColor.gray),
                                    //borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //About Yourself
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.aboutYourself,
                            style: TextStyle(
                                color: UIColor.darkGray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            UIText.aboutYourselfHint,
                            style:
                                TextStyle(color: UIColor.gray, fontSize: 16.0),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: TextField(
                        maxLines: 6,
                        maxLength: 300,
                        decoration: InputDecoration(
                          hintText: UIText.aboutYourselfFormHint,
                          hintStyle: const TextStyle(fontSize: 12.0),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                        ),
                      ),
                    ),

                    //Update Date
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 8.0),
                      child: Row(
                        children: [
                          Text(
                            "${dateTime.day}.${dateTime.month}.${dateTime.year} tarihinde güncellendi.",
                            style: TextStyle(
                              color: UIColor.chooseButtonColor,
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Save Button
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, bottom: 80.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.47,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: UIColor.saveButtonColor,
                              ),
                              child: Text(UIText.saveButton),
                            ),
                          ),
                        ],
                      ),
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
