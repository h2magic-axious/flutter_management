import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Framework extends StatelessWidget {
  const Framework({Key? key}) : super(key: key);

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
