import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:getx_camera_gallery/controllers/picture_controller.dart';
import 'package:image_picker/image_picker.dart';

class PictureScreen extends StatelessWidget {
  const PictureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photo Picker App'),
        centerTitle: true,
      ),
      body: SizedBox(
        width: Get.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              return Get.find<PictureController>().imagePath.value == ''
                  ? const CircularProgressIndicator()
                  : SizedBox(
                      width: Get.width,
                      height: Get.height / 1.7,
                      child: Image.file(
                          File(Get.find<PictureController>().imagePath.value)),
                    );
            }),
            Obx(() {
              return Text(Get.find<PictureController>().imageSize.value);
            }),
            ElevatedButton(
              onPressed: () {
                Get.find<PictureController>().getImage(ImageSource.camera);
              },
              child: const Text('open Camera'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<PictureController>().getImage(ImageSource.gallery);
              },
              child: const Text('pick from Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}
