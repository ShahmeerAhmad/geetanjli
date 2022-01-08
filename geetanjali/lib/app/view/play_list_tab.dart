import 'package:flutter/material.dart';
import 'package:geetanjali/app/color/app_color.dart';
import 'package:geetanjali/app/view/second_player.dart';
import 'package:geetanjali/app/view/third_player.dart';
import 'package:get/get.dart';

class PlayListTab extends StatelessWidget {
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            child: Container(
              width: 203,
              height: 208,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: const DecorationImage(
                      image: AssetImage("asset/image/back.png"),
                      fit: BoxFit.cover)),
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "Name of Playlist",
                  style: TextStyle(
                      color: Colors.black,
                      fontFamily: "Gabriela",
                      fontSize: 22),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 300, minWidth: 100),
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmo",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xff9CA5AF),
                          fontFamily: "Gabriela",
                          fontSize: 12),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.to(() => SecondPlayer());
                    },
                    style: ElevatedButton.styleFrom(
                        primary: AppColor.tabbrown,
                        elevation: 2,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 60, vertical: 15)),
                    child: const Text(
                      "Play",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gabriela",
                          color: Colors.white),
                    )),
                const SizedBox(
                  width: 12,
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: Color(0xffEBE1D4),
                        elevation: 2,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 15)),
                    child: const Text(
                      "Shuffle",
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: "Gabriela",
                          color: AppColor.tabbrown),
                    )),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 310,
            child: Column(
              children: [
                Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.to(() => ThirdPlayer());
                      },
                      leading: const Icon(
                        Icons.play_arrow,
                        color: AppColor.tabbrown,
                      ),
                      title: const Text(
                        "Name of track",
                        style: TextStyle(
                            fontFamily: "Gabriela", color: AppColor.tabbrown),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      indent: 30,
                      endIndent: 30,
                    )
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.to(() => ThirdPlayer());
                      },
                      leading: Container(
                        width: 10,
                        height: 10,
                      ),
                      title: const Text(
                        "Name of track",
                        style: TextStyle(
                            fontFamily: "Gabriela", color: AppColor.tabbrown),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      indent: 30,
                      endIndent: 30,
                    )
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.to(() => ThirdPlayer());
                      },
                      leading: Container(
                        width: 10,
                        height: 10,
                      ),
                      title: const Text(
                        "Name of track",
                        style: TextStyle(
                            fontFamily: "Gabriela", color: AppColor.tabbrown),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      indent: 30,
                      endIndent: 30,
                    )
                  ],
                ),
                Column(
                  children: [
                    ListTile(
                      onTap: () {
                        Get.to(() => ThirdPlayer());
                      },
                      leading: Container(
                        width: 10,
                        height: 10,
                      ),
                      title: const Text(
                        "Name of track",
                        style: TextStyle(
                            fontFamily: "Gabriela", color: AppColor.tabbrown),
                      ),
                    ),
                    const Divider(
                      color: Colors.black,
                      indent: 30,
                      endIndent: 30,
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                width: double.infinity,
                height: 200,
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
                                padding: const EdgeInsets.only(left: 5),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Card(
                                      child: Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius:
                                                BorderRadius.circular(20)),
                                        width: 139,
                                        height: 138,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              decoration: BoxDecoration(),
                                            ),
                                          ],
                                        ),
                                      ),
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
    );
  }
}
