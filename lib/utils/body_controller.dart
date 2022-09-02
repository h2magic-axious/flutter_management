import 'package:get/get.dart';
import 'package:flutter/material.dart';

class WidgetController extends GetxController {
  Rx<Widget> widget = Rx<Widget>(Container());
}

/// 局部组件控制器
/// (用于局部替换组件)
class BodyController {
  static WidgetController controller = Get.put(WidgetController());

  static changeWidget(Widget w) {
    controller.widget.value = w;
    controller.update();
  }
}
