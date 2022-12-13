import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/info_controller.dart';

class InfoView extends GetView<InfoController> {
  const InfoView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EAD2),
      body: Center(
        child: Text(
          'InfoView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            width: Get.width,
            height: Get.height * 0.13,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: Get.height * 0.04,
                    width: Get.width,
                    color: Color(0xffDAD5BF),
                  ),
                ),
                Container(
                  width: Get.width,
                  height: Get.height * 0.09,
                  color: Color(0xff6C584C),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        // color: Colors.red,
                        width: 40,
                        height: 40,
                        child: IconButton(
                            onPressed: () => Get.toNamed(Routes.HOME),
                            icon: Image.asset(
                              "assets/buttons/home.png",
                              fit: BoxFit.fill,
                              height: 45,
                            )),
                      ),
                      SizedBox(
                        // color: Colors.green,
                        width: 40,
                        height: 40,
                        child: IconButton(
                            onPressed: () => Get.toNamed(Routes.INFO),
                            icon: Image.asset(
                              "assets/buttons/info.png",
                              fit: BoxFit.fill,
                              height: 45,
                            )),
                      ),
                      SizedBox(
                        width: 50,
                        height: 50,
                      ),
                      SizedBox(
                        // color: Colors.amber,
                        width: 40,
                        height: 40,
                        child: IconButton(
                            onPressed: () => Get.toNamed(Routes.CART),
                            icon: Image.asset(
                              "assets/buttons/cart.png",
                              fit: BoxFit.fill,
                              height: 45,
                            )),
                      ),
                      SizedBox(
                        // color: Colors.pinkAccent,
                        width: 40,
                        height: 40,
                        child: IconButton(
                            onPressed: () => Get.toNamed(Routes.PROFILE),
                            icon: Image.asset(
                              "assets/buttons/profile.png",
                              fit: BoxFit.fill,
                              height: 45,
                            )),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 80,
            width: 80,
            // color: Colors.red,
            child: IconButton(
                onPressed: () => Get.toNamed(Routes.CAMERA_DETECTOR),
                icon: Image.asset(
                  "assets/buttons/menu-camera.png",
                  fit: BoxFit.fill,
                  height: 80,
                )),
          )
        ],
      ),
    );
  }
}
