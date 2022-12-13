import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/cart_controller.dart';

class CartView extends GetView<CartController> {
  const CartView({Key? key}) : super(key: key);
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
                      child: Image.asset(
                        "assets/buttons/previous.png",
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    width: 150,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Cart",
                        style: TextStyle(
                          fontSize: 18,
                          color: Color(0xffF2E8CF),
                          fontWeight: FontWeight.bold,
                        ),
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
              child: ListView(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
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
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: Container(
                              height: 85,
                              width: 85,
                              decoration: BoxDecoration(
                                color: Color(0xffF2E8CF),
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                          ),
                          Container(
                            height: 70,
                            width: 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Sampah Kardus",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xffF2E8CF),
                                  ),
                                ),
                                Text(
                                  "By Motorcycle",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffF2E8CF),
                                  ),
                                ),
                                Text(
                                  "Total harga: Rp. 100.000",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xffF2E8CF),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 100,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: TextButton(
                                      onPressed: () {},
                                      child: Image.asset(
                                        "assets/buttons/y.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                      onPressed: () {},
                                      icon: Image.asset(
                                        "assets/buttons/n.png",
                                        fit: BoxFit.fill,
                                      )),
                                )
                              ],
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
