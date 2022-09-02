import 'package:flutter/cupertino.dart';
import 'package:flutter_management/pages/root.dart';
import 'package:flutter_management/utils/settings/size.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final windowSizeService = WindowSizeService();
  await windowSizeService.initialize();

  runApp(const Root());
}
