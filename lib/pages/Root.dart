import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Login.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Management",
        theme: ThemeData(primarySwatch: Colors.green),
        home: const Login());
  }
}
