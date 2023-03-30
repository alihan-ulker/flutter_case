import 'package:flutter/material.dart';
import 'package:flutter_case/core/shared/ui_color.dart';
import 'package:flutter_case/core/shared/ui_text.dart';

class AddYourselfPage extends StatefulWidget {
  const AddYourselfPage({Key? key}) : super(key: key);

  @override
  AddYourselfPageState createState() => AddYourselfPageState();
}

class AddYourselfPageState extends State<AddYourselfPage> {
  late MediaQueryData mediaQueryData = MediaQuery.of(context);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UIColor.blue,
      body: Padding(
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
          child: Column(
            children: [
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
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, right: 20.0, top: 8.0, bottom: 16.0),
                child: Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: UIColor.appBarDivider,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Container(
                      height: 120.0,
                      width: 120.0,
                      //color: UIColor.gray,
                      decoration: BoxDecoration(
                        color: UIColor.gray,
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.delete),
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: UIColor.profileBackground,
                            child: const Icon(
                              Icons.person,
                              color: Colors.grey,
                              size: 20.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
