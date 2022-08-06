import 'package:flutter/material.dart';
import 'package:flutter_management/pages/hello.dart';
import 'package:get/get.dart';

class Framework extends StatelessWidget {
  const Framework({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Management",
        theme: ThemeData(primarySwatch: Colors.blue),
        color: const MyApp());
  }
}