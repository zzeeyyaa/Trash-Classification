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
                                      onPressed: () =>
                                          Get.toNamed(Routes.PAYMENT),
                                      child: Image.asset(
                                        "assets/buttons/y.png",
                                        fit: BoxFit.fill,
                                      )),
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (context) => AlertDialog(
                                            insetPadding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Color(0xFF79675C),
                                            content: Container(
                                              height: Get.height * 0.05,
                                              width: Get.width * 0.8,
                                              child: Container(
                                                height: 60,
                                                width: 200,
                                                child: Text(
                                                  "Are you sure want to delete this item from your cart?",
                                                  style: TextStyle(
                                                      color: Color(0xffF2E8CF),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ),
                                            actions: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 5),
                                                child: Center(
                                                  child: Container(
                                                    width: Get.width * 0.8,
                                                    height: 60,
                                                    // color: Colors.amber,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height: 100,
                                                          width: 140,
                                                          child: IconButton(
                                                              onPressed: () =>
                                                                  Get.back(),
                                                              icon: Image.asset(
                                                                "assets/buttons/cancel.png",
                                                                fit:
                                                                    BoxFit.fill,
                                                                width: 140,
                                                              )),
                                                        ),
                                                        SizedBox(
                                                          height: 100,
                                                          width: 140,
                                                          child: IconButton(
                                                              iconSize: 120,
                                                              onPressed: () =>
                                                                  Get.defaultDialog(
                                                                    backgroundColor:
                                                                        Color(
                                                                            0xffCC7A7B),
                                                                    contentPadding:
                                                                        EdgeInsets.all(
                                                                            20),
                                                                    titlePadding:
                                                                        EdgeInsets.only(
                                                                            top:
                                                                                50),
                                                                    content:
                                                                        Container(
                                                                      child:
                                                                          Center(
                                                                        child:
                                                                            Column(
                                                                          children: [
                                                                            Image.asset("assets/images/x.png"),
                                                                            Padding(
                                                                              padding: const EdgeInsets.all(20),
                                                                              child: Text(
                                                                                "This feature isn't work properly",
                                                                                textAlign: TextAlign.center,
                                                                                style: TextStyle(fontSize: 18, color: Color(0xffF2E8CF)),
                                                                              ),
                                                                            )
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    title:
                                                                        "I'm Sorry",
                                                                    titleStyle: TextStyle(
                                                                        fontSize:
                                                                            24,
                                                                        color: Color(
                                                                            0xffF2E8CF)),
                                                                  ),
                                                              icon: Image.asset(
                                                                "assets/buttons/delete.png",
                                                                fit:
                                                                    BoxFit.fill,
                                                                width: 140,
                                                              )),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        );
                                      },
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
