import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
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
            //foto profile and text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Container(
                height: Get.height * 0.15,
                width: Get.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Center(
                      child: Container(
                        width: 65,
                        height: 80,
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Row(children: [
                            Image.asset(
                              "assets/images/foto-pink.png",
                              fit: BoxFit.fill,
                              width: 60,
                            ),
                            SizedBox(
                              height: 80,
                              width: 5,
                            )
                          ]),
                          Image.asset("assets/buttons/profile-camera.png")
                        ]),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      child: Center(
                        child: Text(
                          "Edit your profile?",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xff6C584C),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //box edit detail profile
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
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
                  child: Column(
                    children: [
                      //fullname
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 20, left: 50, right: 50),
                            child: Container(
                              height: 30,
                              width: Get.width,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Fullname",
                                  style: TextStyle(
                                    color: Color(0xff6C584C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Container(
                              width: Get.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 250,
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF2E8CF),
                                        filled: true,
                                        hintText: 'User Fullname',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA98467),
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
                                            insetPadding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Color(0xFF79675C),
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
                                                          color:
                                                              Color(0xffF2E8CF),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: Get.width * 0.75,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFF2E8CF),
                                                    ),
                                                    child: TextField(
                                                      // controller:
                                                      //     controller.nameU,
                                                      autofocus: true,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Color(0xFFF2E8CF),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        hintText:
                                                            "User Fullname",
                                                        hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffBC4749),
                                                          fontSize: 18,
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
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
                                                                  .circular(30),
                                                          borderSide:
                                                              BorderSide.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                                                                "assets/buttons/save.png",
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
                      //email
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 50, right: 50),
                            child: Container(
                              height: 30,
                              width: Get.width,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "E-mail",
                                  style: TextStyle(
                                    color: Color(0xff6C584C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Container(
                              width: Get.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 250,
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF2E8CF),
                                        filled: true,
                                        hintText: 'User E-mail',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA98467),
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
                                            insetPadding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Color(0xFF79675C),
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
                                                      "Change your E-mail",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF2E8CF),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: Get.width * 0.75,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFF2E8CF),
                                                    ),
                                                    child: TextField(
                                                      // controller:
                                                      //     controller.nameU,
                                                      autofocus: true,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Color(0xFFF2E8CF),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        hintText: "User E-mail",
                                                        hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffBC4749),
                                                          fontSize: 18,
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
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
                                                                  .circular(30),
                                                          borderSide:
                                                              BorderSide.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                                                                "assets/buttons/save.png",
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
                      //phoneNumber
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 50, right: 50),
                            child: Container(
                              height: 30,
                              width: Get.width,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Phone Number",
                                  style: TextStyle(
                                    color: Color(0xff6C584C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Container(
                              width: Get.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 250,
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF2E8CF),
                                        filled: true,
                                        hintText: 'User Phone Number',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA98467),
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
                                            insetPadding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Color(0xFF79675C),
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
                                                      "Change your Phone Number",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF2E8CF),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: Get.width * 0.75,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFF2E8CF),
                                                    ),
                                                    child: TextField(
                                                      // controller:
                                                      //     controller.nameU,
                                                      autofocus: true,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Color(0xFFF2E8CF),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        hintText:
                                                            "User Phone Number",
                                                        hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffBC4749),
                                                          fontSize: 18,
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
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
                                                                  .circular(30),
                                                          borderSide:
                                                              BorderSide.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                                                                "assets/buttons/save.png",
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
                      //address
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 50, right: 50),
                            child: Container(
                              height: 30,
                              width: Get.width,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Address",
                                  style: TextStyle(
                                    color: Color(0xff6C584C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Container(
                              width: Get.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 250,
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF2E8CF),
                                        filled: true,
                                        hintText: 'User Address',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA98467),
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
                                            insetPadding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Color(0xFF79675C),
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
                                                      "Change your Address",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF2E8CF),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: Get.width * 0.75,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFF2E8CF),
                                                    ),
                                                    child: TextField(
                                                      // controller:
                                                      //     controller.nameU,
                                                      autofocus: true,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Color(0xFFF2E8CF),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        hintText:
                                                            "User Address",
                                                        hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffBC4749),
                                                          fontSize: 18,
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
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
                                                                  .circular(30),
                                                          borderSide:
                                                              BorderSide.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                                                                "assets/buttons/save.png",
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
                      //password
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 10, left: 50, right: 50),
                            child: Container(
                              height: 30,
                              width: Get.width,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Password",
                                  style: TextStyle(
                                    color: Color(0xff6C584C),
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 30,
                              right: 30,
                            ),
                            child: Container(
                              width: Get.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Color(0xffF2E8CF),
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 60,
                                    width: 250,
                                    child: TextField(
                                      enabled: false,
                                      decoration: InputDecoration(
                                        fillColor: Color(0xffF2E8CF),
                                        filled: true,
                                        hintText: 'User Password',
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 20),
                                        hintStyle: TextStyle(
                                            color: Color(0xffA98467),
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
                                            insetPadding: EdgeInsets.all(10),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                            backgroundColor: Color(0xFF79675C),
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
                                                      "Change your Password",
                                                      style: TextStyle(
                                                          color:
                                                              Color(0xffF2E8CF),
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 50,
                                                    width: Get.width * 0.75,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              30),
                                                      color: Color(0xFFF2E8CF),
                                                    ),
                                                    child: TextField(
                                                      // controller:
                                                      //     controller.nameU,
                                                      autofocus: true,
                                                      decoration:
                                                          InputDecoration(
                                                        fillColor:
                                                            Color(0xFFF2E8CF),
                                                        contentPadding:
                                                            EdgeInsets
                                                                .symmetric(
                                                                    horizontal:
                                                                        20),
                                                        hintText:
                                                            "User Password",
                                                        hintStyle: TextStyle(
                                                          color:
                                                              Color(0xffBC4749),
                                                          fontSize: 18,
                                                        ),
                                                        enabledBorder:
                                                            OutlineInputBorder(
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
                                                                  .circular(30),
                                                          borderSide:
                                                              BorderSide.none,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
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
                                                                "assets/buttons/save.png",
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
                      //LOGOUT
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Container(
                          height: 70,
                          width: Get.width * 0.8,
                          child: TextButton(
                            onPressed: () {},
                            child: Image.asset(
                              "assets/buttons/logout.png",
                              fit: BoxFit.cover,
                              width: Get.width * 0.8,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
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
