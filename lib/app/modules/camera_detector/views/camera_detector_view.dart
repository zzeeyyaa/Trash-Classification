import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/camera_detector_controller.dart';

class CameraDetectorView extends GetView<CameraDetectorController> {
  const CameraDetectorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EAD2),
      body: Center(
        child: Text(
          'CameraDetectorView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
