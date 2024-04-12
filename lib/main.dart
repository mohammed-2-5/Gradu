import 'package:device_preview/device_preview.dart';
import 'package:eng_aya/views/pages/main_screen.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(DevicePreview(
      enabled: true,

      builder: (context) {
        return const MyApp();
      }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      title: 'Flutter Bottom Navigation Demo',

      home: const MainScreen(),
    );
  }
}
