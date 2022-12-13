import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_sampah_controller.dart';

class DetailSampahView extends GetView<DetailSampahController> {
  const DetailSampahView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailSampahView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'DetailSampahView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
