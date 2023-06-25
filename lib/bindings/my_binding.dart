import 'package:get/get.dart';
import 'package:getx_camera_gallery/controllers/picture_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PictureController());
    // TODO: implement dependencies
  }
}
