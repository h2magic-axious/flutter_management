import 'package:flutter/material.dart';
import 'package:flutter_management/pages/home.dart';
import 'package:get/get.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: "Management",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
