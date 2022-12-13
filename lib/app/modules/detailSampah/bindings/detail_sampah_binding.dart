import 'package:get/get.dart';

import '../controllers/detail_sampah_controller.dart';

class DetailSampahBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailSampahController>(
      () => DetailSampahController(),
    );
  }
}
