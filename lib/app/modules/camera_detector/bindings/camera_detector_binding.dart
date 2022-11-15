import 'package:get/get.dart';

import '../controllers/camera_detector_controller.dart';

class CameraDetectorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CameraDetectorController>(
      () => CameraDetectorController(),
    );
  }
}
