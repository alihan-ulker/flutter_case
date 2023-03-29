import 'package:flutter/material.dart';

class ExpressYourselfPage extends StatefulWidget {
  const ExpressYourselfPage({Key? key}) : super(key: key);

  @override
  ExpressYourselfPageState createState() => ExpressYourselfPageState();
}

class ExpressYourselfPageState extends State<ExpressYourselfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text("Kendini İfade Et Sayfası"),
      ),
    );
  }
}
