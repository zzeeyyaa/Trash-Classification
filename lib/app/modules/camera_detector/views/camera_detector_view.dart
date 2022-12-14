import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/camera_detector_controller.dart';

class CameraDetectorView extends GetView<CameraDetectorController> {
  const CameraDetectorView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EAD2),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30, top: 10),
            child: Container(
              height: 60,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xffCC7A7B),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 40,
                      width: 40,
                      child: TextButton(
                        onPressed: () => Get.back(),
                        child: Image.asset(
                          "assets/buttons/previous.png",
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: Get.width * 0.57,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Trash Classification",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffF2E8CF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        child: Image.asset("assets/buttons/home.png"),
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 15),
            child: Container(
              height: Get.height * 0.68,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xffDAD5BF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          width: Get.width,
          height: Get.height * 0.12,
          color: Color(0xffDAD5BF),
          // color: Colors.brown,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton(
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff6C584C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Cancel",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                onPressed: () => Get.back(),
              ),
              TextButton(
                child: Container(
                  height: 50,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Color(0xff849554),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Image.asset(
                    "assets/buttons/camera.png",
                    width: 50,
                  ),
                ),
                onPressed: () => Get.defaultDialog(
                  backgroundColor: Color(0xffCC7A7B),
                  contentPadding: EdgeInsets.all(20),
                  titlePadding: EdgeInsets.only(top: 50),
                  content: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset("assets/images/x.png"),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "This feature isn't work properly",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffF2E8CF)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  title: "I'm Sorry",
                  titleStyle: TextStyle(fontSize: 24, color: Color(0xffF2E8CF)),
                ),
              ),
              TextButton(
                child: Container(
                  height: 50,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Color(0xff6C584C),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Gallery",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ),
                onPressed: () => Get.defaultDialog(
                  backgroundColor: Color(0xffCC7A7B),
                  contentPadding: EdgeInsets.all(20),
                  titlePadding: EdgeInsets.only(top: 50),
                  content: Container(
                    child: Center(
                      child: Column(
                        children: [
                          Image.asset("assets/images/x.png"),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "This feature isn't work properly",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffF2E8CF)),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  title: "I'm Sorry",
                  titleStyle: TextStyle(fontSize: 24, color: Color(0xffF2E8CF)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
