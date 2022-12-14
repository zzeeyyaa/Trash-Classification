import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0EAD2),
      resizeToAvoidBottomInset: true,
      body: Center(
          child: Container(
        height: Get.height,
        width: Get.width,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding:
                  EdgeInsets.only(right: 10, left: 30, bottom: 50, top: 100),
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
            Container(
              decoration: BoxDecoration(
                // color: const Color(0xFF6C584C),
                image: DecorationImage(
                  alignment: Alignment.bottomCenter,
                  image: AssetImage(
                    "assets/images/bglogin.png",
                  ),
                  fit: BoxFit.cover,
                ),
                //   borderRadius: BorderRadius.only(
                //       topLeft: Radius.circular(170),
                //       topRight: Radius.circular(170)),
              ),
              width: Get.width,
              height: Get.height * 0.65,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 80),
                      child: Text(
                        "Log-in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Color(0xfffF2E8CF),
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        "Add your detail to log-in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xfffF2E8CF),
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 15),
                      child: TextField(
                        // controller: controller.emailU,
                        decoration: InputDecoration(
                          hintMaxLines: 1,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xFFADC178),
                              width: 2,
                            ),
                          ),
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Color(0xFFA98467)),
                          contentPadding: EdgeInsets.only(left: 20),
                          fillColor: Color(0xffF2E8CF),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Color(0xffCC7A7B),
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 70, vertical: 15),
                      child: TextField(
                        // controller: controller.emailU,
                        obscureText: true,
                        obscuringCharacter: "*",
                        decoration: InputDecoration(
                            hintMaxLines: 1,
                            filled: true,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide(
                                color: Color(0xFFADC178),
                                width: 2,
                              ),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Color(0xFFA98467)),
                            contentPadding: EdgeInsets.only(left: 20),
                            fillColor: Color(0xffF2E8CF),
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30),
                                borderSide: BorderSide(
                                    color: Color(0xffCC7A7B), width: 2))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, right: 65, left: 65),
                      child: TextButton(
                        onPressed: () => Get.offAllNamed(Routes.HOME),
                        child: Image.asset(
                          "assets/buttons/login.png",
                          fit: BoxFit.fitWidth,
                          width: Get.width,
                        ),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "Forgot password?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xfffF2E8CF),
                          fontSize: 18,
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
                        titleStyle:
                            TextStyle(fontSize: 24, color: Color(0xffF2E8CF)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
