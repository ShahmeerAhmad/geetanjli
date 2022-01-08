import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:geetanjali/app/controller/home_controller.dart';
import 'package:get/get.dart';

class ThirdPlayer extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Row(
            children: const [
              Text(
                "Song Title",
                style: TextStyle(
                    color: AppColor.tabbrown,
                    fontSize: 12,
                    fontFamily: "Gabriela"),
              ),
              Text(
                " | ",
                style: TextStyle(
                    color: AppColor.tabbrown,
                    fontSize: 12,
                    fontFamily: "Gabriela"),
              ),
              Text(
                "Name of Artist",
                style: TextStyle(
                    color: AppColor.barThumb,
                    fontSize: 12,
                    fontFamily: "Gabriela"),
              )
            ],
          ),
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
        body: Obx(() {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Expanded(
                    flex: 5,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 9, vertical: 2),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              width: 79,
                              height: 81,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  image: const DecorationImage(
                                      image: AssetImage("asset/image/back.png"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(12),
                          alignment: Alignment.centerLeft,
                          child: DropdownButton<String>(
                            dropdownColor: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30),
                            hint: Text("Kannada"),
                            focusColor: Colors.grey,
                            items: <String>['A', 'B', 'C', 'D']
                                .map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                        Expanded(
                          child: Container(
                              child: ListView.builder(
                                  itemCount: 39,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      width: double.infinity,
                                      height: 80,
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.only(
                                          left: 40, right: 20),
                                      child: const Text(
                                        "ಇದು ಕೇವಲ ಸಮಯದ ಪ್ರಶ್ನೆಯಾಗಿದೆ",
                                        textAlign: TextAlign.left,
                                        maxLines: 2,
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontFamily: "Gabriela",
                                            fontSize: 22),
                                      ),
                                    );
                                  })),
                        )
                      ],
                    )),
                Expanded(
                    flex: 1,
                    child: Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 8),
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
                                width: 40,
                              ),
                              const Icon(
                                Icons.music_note,
                                color: AppColor.iconColor,
                                size: 22,
                              ),
                              const SizedBox(
                                width: 10,
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
                                width: 10,
                              ),
                              Container(
                                  width: 18,
                                  height: 18,
                                  child: const Image(
                                    image:
                                        AssetImage("asset/image/download.png"),
                                    color: AppColor.tabbrown,
                                  )),
                              const SizedBox(
                                width: 50,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ))
              ],
            ),
          );
        }));
  }
}
