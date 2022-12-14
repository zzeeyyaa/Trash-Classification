import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CameraDetectorController extends GetxController {
  final count = 0.obs;

  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  //untuk mendapatkan image
  void getImage(ImageSource imageSource) async {
    print(">>>" + imageSource.name);

    final image = await ImagePicker().getImage(source: imageSource);
    if (image == null) {
      Get.snackbar("title", "Tidak ada gambar");
    } else {
      selectedImagePath.value = image.path;
    }
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
