import 'dart:ui';

import 'package:window_size/window_size.dart';

import 'package:window_size/window_size.dart' as window_size;

class WindowSizeService {
  static double width = 1600;
  static double height = 900;

  Future<void> initialize() async {
    PlatformWindow platformWindow = await window_size.getWindowInfo();
    if (platformWindow.screen != null) {
      var center = platformWindow.frame.center;
      Rect frame = Rect.fromCenter(
        center: Offset(center.dx, center.dy),
        width: width,
        height: height,
      );

      window_size.setWindowFrame(frame);
    }
  }
}
