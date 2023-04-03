import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';
import 'package:flutter_case/core/utils/app_utils.dart';
import 'package:flutter_case/source/views/educational_status_page.dart';
import 'package:flutter_case/source/widgets/base_widgets.dart';
import 'package:image_picker/image_picker.dart';

class ExpressYourselfPage extends StatefulWidget {
  const ExpressYourselfPage({Key? key}) : super(key: key);

  @override
  ExpressYourselfPageState createState() => ExpressYourselfPageState();
}

class ExpressYourselfPageState extends State<ExpressYourselfPage> {
  @override
  void initState() {
    super.initState();
    _minPriceController.text = _selectedRange.start.toString();
    _maxPriceController.text = _selectedRange.end.toString();
  }

  File? _profilePhoto;
  RangeValues _selectedRange = const RangeValues(0, 100000);
  late MediaQueryData mediaQueryData = MediaQuery.of(context);
  TextEditingController _mounthlySalaryController = TextEditingController();
  TextEditingController _rentalAmountController = TextEditingController();
  TextEditingController _aboutYourselfController = TextEditingController();
  TextEditingController _minPriceController = TextEditingController();
  TextEditingController _maxPriceController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _mounthlySalary = GlobalKey<FormState>();
  final _rentalAmount = GlobalKey<FormState>();
  final _aboutYourself = GlobalKey<FormState>();
  String? mounthlySalaryValue;
  String? rentalAmountValue;
  String? aboutYourselfValue;

  bool visibleValue = true;

  bool onPressWoman = true;
  bool onPressMan = false;
  bool onPressOthers = false;
  bool onPressPetYes = true;
  bool onPressPetNo = false;

  bool petCountOne = true;
  bool petCountTwo = false;
  bool petCountThree = false;

  bool addIncomeYes = true;
  bool addIncomeNo = false;

  bool deleteIconVisibility = false;

  double _minPrice = 0.0;
  double _maxPrice = 100000.0;

  DateTime dateTime = DateTime.now();

  pickProfilePhoto() async {
    // Select an image from the user's device
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        // Set the profile photo file to the selected image
        _profilePhoto = File(pickedFile.path);
        setState(() {
          deleteIconVisibility = true;
        });
      }
    });
  }

  //All Saved Data Logs
  saveAllData() {
    //Get Profile Photo Path Data
    if (_profilePhoto != null) {
      log("Photo Path: ${_profilePhoto!.path}");
    } else {
      log("Profile photo not selected.");
    }

    //Get Gender Data
    if (onPressWoman == true) {
      log("Gender: ${UIText.genderWoman}");
    }
    if (onPressMan == true) {
      log("Gender: ${UIText.genderMan}");
    }
    if (onPressOthers == true) {
      log("Gender: ${UIText.genderOthers}");
    }

    //Get Pet Data
    if (onPressPetYes == true) {
      if (petCountOne == true) {
        log("Pet Count: ${UIText.countButtonOne}");
      }
      if (petCountTwo == true) {
        log("Pet Count: ${UIText.countButtonTwo}");
      }
      if (petCountThree == true) {
        log("Pet Count: ${UIText.countButtonThree}");
      }
    }

    //Get Educational Status
    if (educationStatus != null) {
      log("Education Status: $educationStatus");
    } else {
      log("Education Status: Educational status unknown.");
    }

    //Get Mounthly Salary
    if (mounthlySalaryValue != null) {
      log("Mounthly Salary: $mounthlySalaryValue" " TL");
    } else {
      log("Mounthly Salary: Mounthly salary unknown.");
    }

    //Get Additional Income
    if (addIncomeYes == true) {
      log("Additional Income: Income type will be determined.");
    } else {
      log("Additional Income: No additional income.");
    }

    //Get Rental Amount
    if (rentalAmountValue != null) {
      log("Rental Amount: $rentalAmountValue" " TL");
    } else {
      log("Rental Amount: Rental Amount unknown.");
    }

    //Get Price Range
    var min = _minPriceController.text;
    var max = _maxPriceController.text;
    log("Min Price: $min" " TL");
    log("Min Price: $max" " TL");

    //Get About Yourself
    if (aboutYourselfValue != null) {
      log("About Yourself: $aboutYourselfValue");
    } else {
      log("About Yourself: About yourself is blank");
    }

    //Get Update Date
    log("Update Date: ${dateTime.day}.${dateTime.month}.${dateTime.year} tarihinde güncellendi.");

    //Return to previous page.
    Navigator.pop(context);
  }

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
                              AppUtils.startPop(context, educationStatus);
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
                              color: _profilePhoto != null
                                  ? UIColor.profileFillColor
                                  : UIColor.gray,
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                            child: Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 24.0),
                                      child: CircleAvatar(
                                        radius: 35.0,
                                        backgroundImage: _profilePhoto != null
                                            ? FileImage(_profilePhoto!)
                                            : const AssetImage(
                                                    'assets/images/icon.png')
                                                as ImageProvider,
                                      ),
                                    ),
                                  ],
                                ),
                                Visibility(
                                  visible: deleteIconVisibility,
                                  child: Positioned(
                                    top: 0.0,
                                    right: 0.0,
                                    child: IconButton(
                                      icon: const Icon(Icons.delete),
                                      color: Colors.white,
                                      onPressed: () {
                                        setState(() {
                                          _profilePhoto = null;
                                          deleteIconVisibility = false;
                                        });
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Profile Subtitle
                    const ProfilePhoto(),
                    const ProfilePhotoTitle(),

                    //Add Button
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              pickProfilePhoto();
                            },
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: UIColor.buttonBorder),
                            ),
                            child: Text(
                              _profilePhoto != null
                                  ? UIText.changePhoto
                                  : UIText.addButton,
                              style: TextStyle(color: UIColor.buttonBorder),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Gender Buttons
                    const Gender(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 50.0,
                                  width: mediaQueryData.size.width * 0.9,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        onPressWoman = true;
                                        onPressMan = false;
                                        onPressOthers = false;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: onPressWoman == true
                                          ? UIColor.buttonFillColor
                                          : UIColor.white,
                                      side: BorderSide(
                                          color: onPressWoman == true
                                              ? UIColor.buttonBorder
                                              : UIColor.lightButtonBorder),
                                    ),
                                    child: Text(
                                      UIText.genderWoman,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 50.0,
                                  width: mediaQueryData.size.width * 0.9,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        onPressWoman = false;
                                        onPressMan = true;
                                        onPressOthers = false;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: onPressMan == true
                                          ? UIColor.buttonFillColor
                                          : UIColor.white,
                                      side: BorderSide(
                                          color: onPressMan == true
                                              ? UIColor.buttonBorder
                                              : UIColor.lightButtonBorder),
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
                                    onPressed: () {
                                      setState(() {
                                        onPressWoman = false;
                                        onPressMan = false;
                                        onPressOthers = true;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: onPressOthers == true
                                          ? UIColor.buttonFillColor
                                          : UIColor.white,
                                      side: BorderSide(
                                          color: onPressOthers == true
                                              ? UIColor.buttonBorder
                                              : UIColor.lightButtonBorder),
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
                    const PetQuestion(),
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
                                  onPressPetYes = true;
                                  onPressPetNo = false;
                                  visibleValue = true;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: onPressPetYes == true
                                    ? UIColor.buttonFillColor
                                    : UIColor.white,
                                side: BorderSide(
                                    color: onPressPetYes == true
                                        ? UIColor.buttonBorder
                                        : UIColor.lightButtonBorder),
                              ),
                              child: Text(UIText.yesButton),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.43,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  onPressPetYes = false;
                                  onPressPetNo = true;
                                  visibleValue = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: onPressPetNo == true
                                    ? UIColor.buttonFillColor
                                    : UIColor.white,
                                side: BorderSide(
                                    color: onPressPetNo == true
                                        ? UIColor.buttonBorder
                                        : UIColor.lightButtonBorder),
                              ),
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
                          const PetTitle(),
                          Column(
                            children: [
                              SizedBox(
                                height: 50.0,
                                width: mediaQueryData.size.width * 0.9,
                                child: OutlinedButton(
                                  onPressed: () {
                                    setState(() {
                                      petCountOne = true;
                                      petCountTwo = false;
                                      petCountThree = false;
                                    });
                                  },
                                  style: OutlinedButton.styleFrom(
                                    backgroundColor: petCountOne == true
                                        ? UIColor.buttonFillColor
                                        : UIColor.white,
                                    side: BorderSide(
                                        color: petCountOne == true
                                            ? UIColor.buttonBorder
                                            : UIColor.lightButtonBorder),
                                  ),
                                  child: Text(UIText.countButtonOne),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: SizedBox(
                                  height: 50.0,
                                  width: mediaQueryData.size.width * 0.9,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      setState(() {
                                        petCountOne = false;
                                        petCountTwo = true;
                                        petCountThree = false;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: petCountTwo == true
                                          ? UIColor.buttonFillColor
                                          : UIColor.white,
                                      side: BorderSide(
                                          color: petCountTwo == true
                                              ? UIColor.buttonBorder
                                              : UIColor.lightButtonBorder),
                                    ),
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
                                    onPressed: () {
                                      setState(() {
                                        petCountOne = false;
                                        petCountTwo = false;
                                        petCountThree = true;
                                      });
                                    },
                                    style: OutlinedButton.styleFrom(
                                      backgroundColor: petCountThree == true
                                          ? UIColor.buttonFillColor
                                          : UIColor.white,
                                      side: BorderSide(
                                          color: petCountThree == true
                                              ? UIColor.buttonBorder
                                              : UIColor.lightButtonBorder),
                                    ),
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
                    const EducationalStatus(),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 18.0),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.9,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EducationalStatusPage()),
                                ).then((result) {
                                  setState(() {
                                    educationStatus = result["educationStatus"];
                                  });
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    educationStatus ?? UIText.dropdownHint,
                                    style: TextStyle(
                                        color: UIColor.chooseButtonColor,
                                        fontSize: 14.0),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: UIColor.darkGray,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    //Mounthly Salary
                    const MounthlySalary(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Form(
                        key: _mounthlySalary,
                        child: TextFormField(
                          controller: _mounthlySalaryController,
                          onChanged: (inputValue) =>
                              mounthlySalaryValue = inputValue,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "25.000",
                            suffixIcon: const Icon(Icons.currency_lira_rounded),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 1, color: UIColor.chooseButtonColor),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Additional Income
                    const AdditionalIncome(),
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
                                  addIncomeYes = true;
                                  addIncomeNo = false;
                                  visibleValue = true;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: addIncomeYes == true
                                    ? UIColor.buttonFillColor
                                    : UIColor.white,
                                side: BorderSide(
                                    color: addIncomeYes == true
                                        ? UIColor.buttonBorder
                                        : UIColor.lightButtonBorder),
                              ),
                              child: Text(UIText.yesButton),
                            ),
                          ),
                          SizedBox(
                            height: 50.0,
                            width: mediaQueryData.size.width * 0.43,
                            child: OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  addIncomeYes = false;
                                  addIncomeNo = true;
                                  visibleValue = false;
                                });
                              },
                              style: OutlinedButton.styleFrom(
                                backgroundColor: addIncomeNo == true
                                    ? UIColor.buttonFillColor
                                    : UIColor.white,
                                side: BorderSide(
                                    color: addIncomeNo == true
                                        ? UIColor.buttonBorder
                                        : UIColor.lightButtonBorder),
                              ),
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
                          const AddIncomeType(),
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
                                        Icon(
                                          Icons.currency_exchange,
                                          color: UIColor.darkGray,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const AddIncomeButton(),
                        ],
                      ),
                    ),

                    //Rental Amount
                    const RentalAmount(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Form(
                        key: _rentalAmount,
                        child: TextFormField(
                          controller: _rentalAmountController,
                          onChanged: (inputValue) =>
                              rentalAmountValue = inputValue,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "7.000",
                            suffixIcon: const Icon(Icons.currency_lira_rounded),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: UIColor.gray),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //Price Range
                    const PriceRange(),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: RangeSlider(
                        values: _selectedRange,
                        min: 0.0,
                        max: 100000.0,
                        divisions: 1000,
                        labels: RangeLabels(
                          _minPrice.toStringAsFixed(0),
                          _maxPrice.toStringAsFixed(0),
                        ),
                        onChanged: (RangeValues values) {
                          setState(() {
                            _selectedRange = values;
                            _minPriceController.text = values.start.toString();
                            _maxPriceController.text = values.end.toString();
                          });
                        },
                      ),
                    ),
                    const MinMaxPrice(),
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
                                controller: _minPriceController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "1.500",
                                  suffixText: "TL",
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
                                controller: _maxPriceController,
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  hintText: "4.500",
                                  suffixText: "TL",
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1, color: UIColor.gray),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    //About Yourself
                    const AboutYourself(),
                    const AboutYourselfHint(),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 18.0, right: 20.0),
                      child: Form(
                        key: _aboutYourself,
                        child: TextField(
                          controller: _aboutYourselfController,
                          maxLines: 6,
                          maxLength: 300,
                          decoration: InputDecoration(
                            hintText: UIText.aboutYourselfFormHint,
                            hintStyle: const TextStyle(fontSize: 12.0),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16.0),
                            ),
                          ),
                          onChanged: (value) => aboutYourselfValue = value,
                        ),
                      ),
                    ),

                    //Update Date
                    UpdateDate(dateTime: dateTime),

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
                              onPressed: () {
                                saveAllData();
                              },
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
