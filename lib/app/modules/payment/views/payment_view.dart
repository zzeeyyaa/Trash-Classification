import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/payment_controller.dart';

class PaymentView extends GetView<PaymentController> {
  const PaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0EAD2),
      resizeToAvoidBottomInset: true,
      body: Container(
        height: Get.height,
        width: Get.width,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [
            //JUDUL PAYMENT
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
                          "Payment",
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
            //CONTENT PAYMENT
            Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Container(
                height: Get.height * 0.73,
                width: Get.width,
                decoration: BoxDecoration(
                  color: Color(0xffDAD5BF),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                    child: Container(
                      height: Get.height * 0.8,
                      width: Get.width,
                      child: Column(
                        children: [
                          //jenisSampah
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 60, right: 60),
                                child: Container(
                                  height: 30,
                                  width: Get.width,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Jenis Sampah",
                                      style: TextStyle(
                                        color: Color(0xff6C584C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: Get.width * 0.77,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: SizedBox(
                                    height: 50,
                                    width: Get.width * 0.6,
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF2E8CF),
                                        filled: true,
                                        hintText: 'Jenis Sampah',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintStyle: TextStyle(
                                            color: Color(0xffBC4749),
                                            fontSize: 18),
                                        enabledBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide.none),
                                        focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            borderSide: BorderSide.none),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //alamat pengiriman
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 60, right: 60, top: 20),
                                child: Container(
                                  height: 30,
                                  width: Get.width,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Alamat Pengiriman",
                                      style: TextStyle(
                                        color: Color(0xff6C584C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: Get.width * 0.77,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: Get.width * 0.53,
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            fillColor: Color(0xffF2E8CF),
                                            filled: true,
                                            hintText: 'Alamat Pengiriman',
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20),
                                            hintStyle: TextStyle(
                                                color: Color(0xffBC4749),
                                                fontSize: 18),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                insetPadding:
                                                    EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                backgroundColor:
                                                    Color(0xFF79675C),
                                                content: Container(
                                                  height: Get.height * 0.15,
                                                  width: Get.width * 0.8,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 200,
                                                        child: Text(
                                                          "Change your Fullname",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffF2E8CF),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: Get.width * 0.75,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color:
                                                              Color(0xFFF2E8CF),
                                                        ),
                                                        child: TextField(
                                                          // controller:
                                                          //     controller.nameU,
                                                          autofocus: true,
                                                          decoration:
                                                              InputDecoration(
                                                            fillColor: Color(
                                                                0xFFF2E8CF),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                            hintText:
                                                                "User Fullname",
                                                            hintStyle:
                                                                TextStyle(
                                                              color: Color(
                                                                  0xffBC4749),
                                                              fontSize: 18,
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                actions: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                                  onPressed:
                                                                      () => Get
                                                                          .back(),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/cancel.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    width: 140,
                                                                  )),
                                                            ),
                                                            SizedBox(
                                                              height: 100,
                                                              width: 140,
                                                              child: IconButton(
                                                                  iconSize: 120,
                                                                  onPressed: () =>
                                                                      Get
                                                                          .defaultDialog(
                                                                        backgroundColor:
                                                                            Color(0xffCC7A7B),
                                                                        contentPadding:
                                                                            EdgeInsets.all(20),
                                                                        titlePadding:
                                                                            EdgeInsets.only(top: 50),
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
                                                                            color:
                                                                                Color(0xffF2E8CF)),
                                                                      ),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/save.png",
                                                                    fit: BoxFit
                                                                        .fill,
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
                                            "assets/buttons/edit.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //beratSampah
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 60, right: 60, top: 20),
                                child: Container(
                                  height: 30,
                                  width: Get.width,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Berat Sampah",
                                      style: TextStyle(
                                        color: Color(0xff6C584C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: Get.width * 0.77,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: Get.width * 0.53,
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            fillColor: Color(0xffF2E8CF),
                                            filled: true,
                                            hintText: 'x Kg',
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20),
                                            hintStyle: TextStyle(
                                                color: Color(0xffBC4749),
                                                fontSize: 18),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                insetPadding:
                                                    EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                backgroundColor:
                                                    Color(0xFF79675C),
                                                content: Container(
                                                  height: Get.height * 0.15,
                                                  width: Get.width * 0.8,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 200,
                                                        child: Text(
                                                          "Change your Fullname",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffF2E8CF),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: Get.width * 0.75,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color:
                                                              Color(0xFFF2E8CF),
                                                        ),
                                                        child: TextField(
                                                          // controller:
                                                          //     controller.nameU,
                                                          autofocus: true,
                                                          decoration:
                                                              InputDecoration(
                                                            fillColor: Color(
                                                                0xFFF2E8CF),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                            hintText:
                                                                "User Fullname",
                                                            hintStyle:
                                                                TextStyle(
                                                              color: Color(
                                                                  0xffBC4749),
                                                              fontSize: 18,
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                actions: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                                  onPressed:
                                                                      () => Get
                                                                          .back(),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/cancel.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    width: 140,
                                                                  )),
                                                            ),
                                                            SizedBox(
                                                              height: 100,
                                                              width: 140,
                                                              child: IconButton(
                                                                  iconSize: 120,
                                                                  onPressed: () =>
                                                                      Get
                                                                          .defaultDialog(
                                                                        backgroundColor:
                                                                            Color(0xffCC7A7B),
                                                                        contentPadding:
                                                                            EdgeInsets.all(20),
                                                                        titlePadding:
                                                                            EdgeInsets.only(top: 50),
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
                                                                            color:
                                                                                Color(0xffF2E8CF)),
                                                                      ),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/save.png",
                                                                    fit: BoxFit
                                                                        .fill,
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
                                            "assets/buttons/edit.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //jenisPengiriman
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 60, right: 60, top: 20),
                                child: Container(
                                  height: 30,
                                  width: Get.width,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Jenis Pengiriman",
                                      style: TextStyle(
                                        color: Color(0xff6C584C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: Get.width * 0.77,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: Get.width * 0.53,
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            fillColor: Color(0xffF2E8CF),
                                            filled: true,
                                            hintText: 'Jenis Pengiriman',
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20),
                                            hintStyle: TextStyle(
                                                color: Color(0xffBC4749),
                                                fontSize: 18),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                insetPadding:
                                                    EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                backgroundColor:
                                                    Color(0xFF79675C),
                                                content: Container(
                                                  height: Get.height * 0.15,
                                                  width: Get.width * 0.8,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 200,
                                                        child: Text(
                                                          "Change your Fullname",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffF2E8CF),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: Get.width * 0.75,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color:
                                                              Color(0xFFF2E8CF),
                                                        ),
                                                        child: TextField(
                                                          // controller:
                                                          //     controller.nameU,
                                                          autofocus: true,
                                                          decoration:
                                                              InputDecoration(
                                                            fillColor: Color(
                                                                0xFFF2E8CF),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                            hintText:
                                                                "User Fullname",
                                                            hintStyle:
                                                                TextStyle(
                                                              color: Color(
                                                                  0xffBC4749),
                                                              fontSize: 18,
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                actions: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                                  onPressed:
                                                                      () => Get
                                                                          .back(),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/cancel.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    width: 140,
                                                                  )),
                                                            ),
                                                            SizedBox(
                                                              height: 100,
                                                              width: 140,
                                                              child: IconButton(
                                                                  iconSize: 120,
                                                                  onPressed: () =>
                                                                      Get
                                                                          .defaultDialog(
                                                                        backgroundColor:
                                                                            Color(0xffCC7A7B),
                                                                        contentPadding:
                                                                            EdgeInsets.all(20),
                                                                        titlePadding:
                                                                            EdgeInsets.only(top: 50),
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
                                                                            color:
                                                                                Color(0xffF2E8CF)),
                                                                      ),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/save.png",
                                                                    fit: BoxFit
                                                                        .fill,
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
                                            "assets/buttons/down.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //jenisPembayaran
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                    left: 60, right: 60, top: 20),
                                child: Container(
                                  height: 30,
                                  width: Get.width,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "Jenis Pembayaran",
                                      style: TextStyle(
                                        color: Color(0xff6C584C),
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 50,
                                width: Get.width * 0.77,
                                decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 20, right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: 50,
                                        width: Get.width * 0.53,
                                        child: TextField(
                                          enabled: false,
                                          decoration: InputDecoration(
                                            fillColor: Color(0xffF2E8CF),
                                            filled: true,
                                            hintText: 'Jenis Pembayaran',
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 20),
                                            hintStyle: TextStyle(
                                                color: Color(0xffBC4749),
                                                fontSize: 18),
                                            enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                            focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                borderSide: BorderSide.none),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: IconButton(
                                          onPressed: () {
                                            showDialog(
                                              context: context,
                                              builder: (context) => AlertDialog(
                                                insetPadding:
                                                    EdgeInsets.all(10),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                ),
                                                backgroundColor:
                                                    Color(0xFF79675C),
                                                content: Container(
                                                  height: Get.height * 0.15,
                                                  width: Get.width * 0.8,
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceEvenly,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 200,
                                                        child: Text(
                                                          "Change your Fullname",
                                                          style: TextStyle(
                                                              color: Color(
                                                                  0xffF2E8CF),
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 50,
                                                        width: Get.width * 0.75,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30),
                                                          color:
                                                              Color(0xFFF2E8CF),
                                                        ),
                                                        child: TextField(
                                                          // controller:
                                                          //     controller.nameU,
                                                          autofocus: true,
                                                          decoration:
                                                              InputDecoration(
                                                            fillColor: Color(
                                                                0xFFF2E8CF),
                                                            contentPadding:
                                                                EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                            hintText:
                                                                "User Fullname",
                                                            hintStyle:
                                                                TextStyle(
                                                              color: Color(
                                                                  0xffBC4749),
                                                              fontSize: 18,
                                                            ),
                                                            enabledBorder: OutlineInputBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                                borderSide:
                                                                    BorderSide
                                                                        .none),
                                                            focusedBorder:
                                                                OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30),
                                                              borderSide:
                                                                  BorderSide
                                                                      .none,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                actions: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
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
                                                                  onPressed:
                                                                      () => Get
                                                                          .back(),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/cancel.png",
                                                                    fit: BoxFit
                                                                        .fill,
                                                                    width: 140,
                                                                  )),
                                                            ),
                                                            SizedBox(
                                                              height: 100,
                                                              width: 140,
                                                              child: IconButton(
                                                                  iconSize: 120,
                                                                  onPressed: () =>
                                                                      Get
                                                                          .defaultDialog(
                                                                        backgroundColor:
                                                                            Color(0xffCC7A7B),
                                                                        contentPadding:
                                                                            EdgeInsets.all(20),
                                                                        titlePadding:
                                                                            EdgeInsets.only(top: 50),
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
                                                                            color:
                                                                                Color(0xffF2E8CF)),
                                                                      ),
                                                                  icon: Image
                                                                      .asset(
                                                                    "assets/buttons/save.png",
                                                                    fit: BoxFit
                                                                        .fill,
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
                                            "assets/buttons/down.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          //totalHarga
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: Container(
                              height: 50,
                              width: Get.width * 0.9,
                              decoration: BoxDecoration(
                                color: Color(0xffF2E8CF),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 50,
                                      width: Get.width * 0.4,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: TextField(
                                        textAlign: TextAlign.start,
                                        enabled: false,
                                        decoration: InputDecoration(
                                          filled: true,
                                          hintText: 'Total Harga:',
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          hintStyle: TextStyle(
                                              color: Color(0xffBC4749),
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: Get.width * 0.37,
                                      height: 50,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: TextField(
                                        enabled: false,
                                        textAlign: TextAlign.end,
                                        decoration: InputDecoration(
                                          filled: true,
                                          hintText: 'Rp. 100.000',
                                          contentPadding: EdgeInsets.symmetric(
                                              horizontal: 20),
                                          hintStyle: TextStyle(
                                              color: Color(0xffBC4749),
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ],
        ),
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
                    "assets/buttons/cart.png",
                    width: 50,
                  ),
                ),
                onPressed: () => Get.toNamed(Routes.CART),
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
                      "Pay",
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
