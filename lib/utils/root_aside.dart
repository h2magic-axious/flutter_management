import 'package:flutter/material.dart';
import 'package:flutter_management/pages/aside/task_aside.dart';

class Aside extends StatelessWidget {
  const Aside({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TaskAside(),
      ],
    );
  }
}
