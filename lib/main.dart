import 'package:flutter/material.dart';
import 'package:kara_flutter/app.dart';
import 'di/di.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const App());
}
