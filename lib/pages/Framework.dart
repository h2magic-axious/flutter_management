import 'package:flutter/material.dart';
import 'package:flutter_management/list_controllers.dart';
import 'package:get/get.dart';

class Framework extends StatelessWidget {
  Framework({Key? key}) : super(key: key);

  final ListController data = Get.put(ListController());
  final ListController fields = Get.put(ListController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Management')),
        body: Row(
          children: [
            Expanded(
                flex: 3,
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text('任务管理'),
                      onTap: () {
                        Get.snackbar('test', '点击任务管理');
                      },
                    )
                  ],
                )),
            Expanded(
              flex: 9,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.blue,
                    ),
                  ),
                  Expanded(
                    flex: 9,
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
