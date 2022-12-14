import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      "assets/images/foto.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "User Full Name",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffF2E8CF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    child: IconButton(
                      onPressed: () => Get.offAllNamed(Routes.PROFILE),
                      icon: Image.asset("assets/buttons/setting.png"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 10),
            child: Container(
              height: 50,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Mau buang sampah?",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff6C584C),
                    ),
                  ),
                  Text(
                    "Pilih jenis sampahmu",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff6C584C),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Container(
              height: Get.height * 0.6,
              width: Get.width,
              decoration: BoxDecoration(
                color: Color(0xffDAD5BF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: ListView(
                padding: EdgeInsets.all(15),
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: Container(
                      height: 100,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Color(0xff849554),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 85,
                            width: 85,
                            decoration: BoxDecoration(
                              color: Color(0xffF2E8CF),
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 130,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sampah Kardus",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffF2E8CF),
                                  ),
                                ),
                                Text(
                                  "Rp. 2000/Kg",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xffF2E8CF),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: Container(
                              width: 50,
                              height: 100,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: TextButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.DETAIL_SAMPAH),
                                        child: Image.asset(
                                          "assets/buttons/next.png",
                                          fit: BoxFit.fill,
                                        )),
                                  ),
                                  SizedBox(
                                    height: 50,
                                    width: 50,
                                    child: IconButton(
                                        onPressed: () =>
                                            Get.toNamed(Routes.PAYMENT),
                                        icon: Image.asset(
                                          "assets/buttons/trash.png",
                                          fit: BoxFit.fill,
                                        )),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
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
