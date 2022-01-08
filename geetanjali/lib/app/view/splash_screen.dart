import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geetanjali/app/binding/home_binding.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:geetanjali/app/view/home_view.dart';
import 'package:get/get.dart';

class SplashPage extends StatefulWidget {
  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAll(() => HomeView(), binding: HomeBinding());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraint) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Column(
                children: [
                  const Text(
                    "VASAVI SIRI",
                    style: TextStyle(
                        fontFamily: "Gabriela",
                        fontSize: 16,
                        color: AppColor.splashvasavi,
                        wordSpacing: 10,
                        letterSpacing: 18),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: constraint.maxHeight * 0.5,
                        minHeight: constraint.minHeight,
                        maxWidth: constraint.maxWidth,
                        minWidth: constraint.minWidth),
                    child: const Text(
                      "GEETANJALI",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "SAMARN",
                          fontSize: 73,
                          color: AppColor.splashgeetanjali),
                    ),
                  )
                ],
              ),
              Container(
                width: 108,
                height: 33,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("asset/image/splash.png"))),
              ),
            ],
          ),
        );
      }),
    );
  }
}
