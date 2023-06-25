import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';
import 'package:getx_camera_gallery/bindings/my_binding.dart';
import 'package:getx_camera_gallery/picture_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const PictureScreen(),
      initialBinding: MyBindings(),
      getPages: [
        GetPage(
          name: '/picture',
          page: () => const PictureScreen(),
        ),
      ],
      initialRoute: '/picture',
    );
  }
}
