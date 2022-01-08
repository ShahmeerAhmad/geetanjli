import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:get/get.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            child: Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("asset/image/women.png"),
                          fit: BoxFit.fill)),
                ),
                Container(
                  child: IconButton(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColor.white,
                      size: 18,
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.bottomCenter,
            height: 60,
            child: const Text(
              "Geetanjali",
              style: TextStyle(
                  color: AppColor.tabbrown,
                  fontSize: 24,
                  fontFamily: "Gabriela"),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(39),
            alignment: Alignment.center,
            child: const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in eiusmod tempor incididunt ut labore et dolore magna aliqua. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in eiusmod tempor incididunt ut labore et dolore magna aliqua.",
              textAlign: TextAlign.justify,
              style: TextStyle(
                  height: 1.4,
                  color: AppColor.tabbrown,
                  fontSize: 16,
                  fontFamily: "Gabriela"),
            ),
          ),
        ],
      ),
    );
  }
}
