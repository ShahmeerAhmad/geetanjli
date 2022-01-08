import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:geetanjali/app/controller/home_controller.dart';
import 'package:geetanjali/app/view/detial.dart';
import 'package:geetanjali/app/view/play_list_tab.dart';
import 'package:geetanjali/app/view/saerch2.dart';
import 'package:geetanjali/app/view/search_view.dart';
import 'package:geetanjali/app/view/second_player.dart';
import 'package:geetanjali/app/view/toggle_button.dart';
import 'package:get/get.dart';
import 'package:toggle_switch/toggle_switch.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Obx(() {
      return controller.isTrue.value
          ? Stack(
              children: [
                controller.tabIndex == 0
                    ? Stack(
                        children: [
                          controller.homeTabIndex == 0
                              ? Stack(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "asset/image/back.png"),
                                              fit: BoxFit.fill)),
                                    ),
                                    Container(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              const Text(
                                                "SONG TITLE",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 22,
                                                    fontFamily: "Gabriela"),
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
                                                    decoration:
                                                        const BoxDecoration(
                                                            image:
                                                                DecorationImage(
                                                                    image:
                                                                        AssetImage(
                                                                      "asset/image/Vector.png",
                                                                    ),
                                                                    fit: BoxFit
                                                                        .fill)),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          GestureDetector(
                                            onTap: () {
                                              Get.to(() => Details());
                                            },
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceEvenly,
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
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 65, vertical: 8),
                                            // child: Slider.adaptive(
                                            //     value: controller
                                            //         .position.inSeconds
                                            //         .toDouble(),
                                            //     min: 0.0,
                                            //     max: controller
                                            //         .duration.inSeconds
                                            //         .toDouble(),
                                            //     onChanged: (val) {
                                            //       controller.audioPlayer.seek(
                                            //           Duration(
                                            //               seconds:
                                            //                   val.toInt()));
                                            //     }),
                                            child: ProgressBar(
                                              barHeight: 2,
                                              thumbColor: AppColor.barThumb,
                                              timeLabelPadding: 5,
                                              baseBarColor: Colors.white38,
                                              timeLabelTextStyle:
                                                  const TextStyle(
                                                      color: AppColor.white,
                                                      fontFamily: "Gabriela",
                                                      fontSize: 12),
                                              thumbRadius: 8,
                                              progress: controller.position,
                                              buffered: controller.position,
                                              total: controller.duration,
                                              onSeek: (duration) {
                                                controller.audioPlayer
                                                    .seek(duration);
                                                print(duration);
                                                print(
                                                    'User selected a new time: $duration');
                                              },
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
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
                                                color: AppColor.iconColor,
                                                size: 22,
                                              ),
                                              IconButton(
                                                onPressed: () {
                                                  controller.getAudio();
                                                },
                                                icon: controller.isPlaying
                                                    ? const Icon(
                                                        Icons
                                                            .pause_circle_outlined,
                                                        size: 36,
                                                        color:
                                                            AppColor.iconColor,
                                                      )
                                                    : const Icon(
                                                        Icons
                                                            .play_circle_outline_rounded,
                                                        size: 36,
                                                        color:
                                                            AppColor.iconColor,
                                                      ),
                                              ),
                                              const Icon(
                                                Icons.forward_10_sharp,
                                                color: AppColor.iconColor,
                                                size: 22,
                                              ),
                                              const Icon(
                                                Icons.fast_forward_rounded,
                                                color: AppColor.white,
                                                size: 28,
                                              ),
                                              const SizedBox(
                                                width: 50,
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 100,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )
                              : Column(
                                  children: [
                                    Expanded(flex: 1, child: Container()),
                                    Expanded(
                                      flex: 9,
                                      child: ListView.builder(
                                          itemCount: 100,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                ListTile(
                                                  onTap: () {
                                                    Get.to(SecondPlayer());
                                                  },
                                                  minVerticalPadding: 10,
                                                  leading: Container(
                                                    width: 38,
                                                    height: 37,
                                                    decoration: const BoxDecoration(
                                                        image: DecorationImage(
                                                            image: AssetImage(
                                                                "asset/image/back.png"),
                                                            fit: BoxFit.cover)),
                                                  ),
                                                  trailing: const Text(
                                                    "2:19",
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontFamily: "Gabriela",
                                                        fontSize: 14),
                                                  ),
                                                  title: const Text(
                                                    "Name of track",
                                                    style: TextStyle(
                                                        color:
                                                            AppColor.tabbrown,
                                                        fontFamily: "Gabriela",
                                                        fontSize: 14),
                                                  ),
                                                ),
                                                const Divider(
                                                  color: Colors.black,
                                                  endIndent: 15,
                                                  indent: 15,
                                                  height: 1,
                                                )
                                              ],
                                            );
                                          }),
                                    ),
                                  ],
                                ),
                          Padding(
                            padding: const EdgeInsets.only(top: 50, left: 30),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SamplePage(),
                                IconButton(
                                    onPressed: () {
                                      Get.to(() => const SearchView(),
                                          fullscreenDialog: true);
                                    },
                                    icon: controller.homeTabIndex == 0
                                        ? const Icon(
                                            Icons.search,
                                            size: 30,
                                            color: AppColor.white,
                                          )
                                        : const Icon(
                                            Icons.search,
                                            size: 30,
                                            color: AppColor.tabbrown,
                                          ))
                              ],
                            ),
                          )
                        ],
                      )
                    : Column(
                        children: [
                          SizedBox(
                            height: 15,
                          ),
                          Expanded(
                              flex: 1,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 20,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Text(
                                      "Playlists",
                                      style: TextStyle(
                                          color: AppColor.tabbrown,
                                          fontFamily: "Gabriela",
                                          fontSize: 32),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        Get.to(() => Search2View());
                                      },
                                      icon: const Icon(
                                        Icons.search,
                                        color: AppColor.iconColor,
                                        size: 23,
                                      ),
                                    )
                                  ],
                                ),
                              )),
                          Expanded(
                              flex: 4,
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(() => PlayListTab(),
                                      fullscreenDialog: true);
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: Column(
                                    children: [
                                      const Expanded(
                                        flex: 1,
                                        child: Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            "Featured",
                                            style: TextStyle(
                                                color: AppColor.tabbrown,
                                                fontFamily: "Gabriela",
                                                fontSize: 18),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                          flex: 5,
                                          child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              itemCount: 10,
                                              itemBuilder: (context, index) {
                                                return GestureDetector(
                                                  onTap: () {
                                                    Get.to(() => PlayListTab());
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10),
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          decoration: BoxDecoration(
                                                              color: Colors.grey
                                                                  .shade100,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          20)),
                                                          width: 177,
                                                          height: 285,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Container(
                                                                decoration: BoxDecoration(
                                                                    color: Colors
                                                                        .grey
                                                                        .shade100,
                                                                    image: DecorationImage(
                                                                        image: AssetImage(
                                                                            "asset/image/lady.png"),
                                                                        fit: BoxFit
                                                                            .fill)),
                                                                height: 200,
                                                              ),
                                                              Container(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(4),
                                                                decoration: const BoxDecoration(
                                                                    color: Colors
                                                                        .brown,
                                                                    borderRadius: BorderRadius.only(
                                                                        bottomLeft:
                                                                            Radius.circular(
                                                                                20),
                                                                        bottomRight:
                                                                            Radius.circular(20))),
                                                                height: 80,
                                                                width: 177,
                                                                child: Column(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceEvenly,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    const Text(
                                                                      "Title",
                                                                      style:
                                                                          TextStyle(
                                                                        fontFamily:
                                                                            "Gabriela",
                                                                        fontSize:
                                                                            14,
                                                                        color: AppColor
                                                                            .white,
                                                                      ),
                                                                    ),
                                                                    ConstrainedBox(
                                                                      constraints: const BoxConstraints(
                                                                          maxWidth:
                                                                              170,
                                                                          minWidth:
                                                                              100),
                                                                      child:
                                                                          const Text(
                                                                        "Lorem ipsum dolor si amet",
                                                                        textAlign:
                                                                            TextAlign.center,
                                                                        style: TextStyle(
                                                                            color: Colors
                                                                                .white,
                                                                            fontFamily:
                                                                                "Gabriela",
                                                                            fontSize:
                                                                                12),
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      height: 5,
                                                                    )
                                                                  ],
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                );
                                              }))
                                    ],
                                  ),
                                ),
                              )),
                          Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Column(
                                  children: [
                                    const Expanded(
                                      flex: 1,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "All Playlists",
                                          style: TextStyle(
                                              color: AppColor.tabbrown,
                                              fontFamily: "Gabriela",
                                              fontSize: 18),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                        flex: 5,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 10,
                                            itemBuilder: (context, index) {
                                              return Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 12),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                      decoration: BoxDecoration(
                                                          image: const DecorationImage(
                                                              image: AssetImage(
                                                                  "asset/image/lady.png"),
                                                              fit: BoxFit.fill),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      20)),
                                                      width: 139,
                                                      height: 138,
                                                    )
                                                  ],
                                                ),
                                              );
                                            }))
                                  ],
                                ),
                              )),
                        ],
                      ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: // Here, default theme colors are used for activeBgColor, activeFgColor, inactiveBgColor and inactiveFgColor
                        ToggleSwitch(
                      minWidth: double.infinity,
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: const ['HOME', 'PLAYLIST'],
                      customTextStyles: [
                        TextStyle(
                            fontSize: 16,
                            fontFamily: "Gabriela",
                            color: controller.tabIndex == 0
                                ? AppColor.homeTab
                                : Colors.brown.shade100),
                        TextStyle(
                            fontSize: 16,
                            fontFamily: "Gabriela",
                            color: controller.tabIndex == 0
                                ? Colors.brown.shade100
                                : AppColor.homeTab),
                      ],
                      activeBgColor: const [AppColor.white],
                      inactiveBgColor: AppColor.white,
                      onToggle: (index) {
                        controller.setTabIndex(index);
                      },
                    ),
                  ),
                )
              ],
            )
          : Container();
    }));
  }
}
