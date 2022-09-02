import 'package:flutter/material.dart';

class TaskAside extends StatelessWidget {
  const TaskAside({Key? key}) : super(key: key);

  final String title = '任务管理';

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {},
    );
  }
}
