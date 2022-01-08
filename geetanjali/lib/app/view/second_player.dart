import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:geetanjali/app/controller/home_controller.dart';
import 'package:geetanjali/app/view/detial.dart';
import 'package:geetanjali/app/view/third_player.dart';
import 'package:get/get.dart';

class SecondPlayer extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColor.tabbrown,
            size: 18,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: AssetImage("asset/image/back.png"),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: const Text(
                                  "SONG TITLE",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontFamily: "Gabriela"),
                                ),
                              ),
                              Row(
                                children: [
                                  Container(
                                    width: 18,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "asset/image/download.png"),
                                            fit: BoxFit.fill)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 24,
                                    height: 18,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                              "asset/image/Vector.png",
                                            ),
                                            fit: BoxFit.fill)),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: const [
                                Text(
                                  "NAME OF ARTIST",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: "Gabriela"),
                                ),
                                SizedBox(
                                  width: 50,
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Obx(() {
                return Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 65, vertical: 8),
                        child: ProgressBar(
                          barHeight: 2,
                          thumbColor: AppColor.barThumb,
                          timeLabelPadding: 5,
                          baseBarColor: Color(0xffEBE1D4),
                          timeLabelTextStyle: const TextStyle(
                              color: Colors.black,
                              fontFamily: "Gabriela",
                              fontSize: 12),
                          thumbRadius: 8,
                          progress: controller.position,
                          buffered: controller.position,
                          total: controller.duration,
                          onSeek: (duration) {
                            controller.audioPlayer.seek(duration);
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const SizedBox(
                            width: 50,
                          ),
                          Container(
                            width: 19,
                            height: 12,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "asset/image/reverse.png",
                                    ),
                                    fit: BoxFit.fill)),
                          ),
                          const Icon(
                            Icons.replay_10_sharp,
                            color: AppColor.barThumb,
                            size: 22,
                          ),
                          IconButton(
                            onPressed: () {
                              controller.getAudio();
                            },
                            icon: controller.isPlaying
                                ? const Icon(
                                    Icons.pause_circle_outlined,
                                    size: 36,
                                    color: AppColor.barThumb,
                                  )
                                : const Icon(
                                    Icons.play_circle_outline_rounded,
                                    size: 36,
                                    color: AppColor.barThumb,
                                  ),
                          ),
                          // const Icon(
                          //   Icons.play_circle_outline_rounded,
                          //   size: 36,
                          //   color: AppColor.barThumb,
                          // ),
                          const Icon(
                            Icons.forward_10_sharp,
                            color: AppColor.barThumb,
                            size: 22,
                          ),
                          const Icon(
                            Icons.fast_forward_rounded,
                            color: Color(0xffEBE1D4),
                            size: 28,
                          ),
                          const SizedBox(
                            width: 50,
                          )
                        ],
                      ),
                    ],
                  ),
                );
              }))
        ],
      ),
    );
  }
}
